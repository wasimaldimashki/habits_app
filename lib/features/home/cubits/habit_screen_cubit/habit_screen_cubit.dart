import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:habits_app/core/cache/hive_service.dart';
import 'package:habits_app/core/services/service_locator.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:habits_app/features/models/habit_model.dart';
part 'habit_screen_state.dart';

class HabitScreenCubit extends Cubit<HabitScreenState> {
  final GenericHiveService<HabitModel> _habitService = sl();
  late final StreamSubscription _habitsSubscription;

  HabitScreenCubit() : super(HabitScreenState.initial()) {
    _habitsSubscription = _habitService.itemsStream.listen((allHabits) async {
      await _updateStateWithHabits(allHabits);
    });
    // Initial Load
    loadAllHabits();
  }

  final DateTime _firstDay = DateTime.now().subtract(const Duration(days: 365));
  final DateTime _lastDay = DateTime.now().add(const Duration(days: 365));

  Future<void> loadAllHabits() async {
    emit(state.copyWith(status: HabitScreenStatus.loading));
    final allHabits = _habitService.getAll();
    await _updateStateWithHabits(allHabits);
  }

  Future<void> _updateStateWithHabits(List<HabitModel> allHabits) async {
    final marked = await _computeMarkedDates(allHabits, _firstDay, _lastDay);
    final habitsForSelectedDay =
        _getHabitsForDate(allHabits, state.selectedDate);

    emit(state.copyWith(
      status: HabitScreenStatus.loaded,
      allHabits: allHabits,
      habitsForSelectedDay: habitsForSelectedDay,
      markedDates: marked,
    ));
  }

  Future<void> onDaySelected(DateTime date) async {
    final habitsForDay = _getHabitsForDate(state.allHabits, date);
    emit(state.copyWith(
      selectedDate: date,
      habitsForSelectedDay: habitsForDay,
    ));
  }

  Future<void> toggleHabitCompletion(HabitModel habit) async {
    final dateKey = state.selectedDate.toIso8601String().substring(0, 10);
    final updatedCompletedDates = Map<String, bool>.from(habit.completedDates);
    updatedCompletedDates[dateKey] = !(updatedCompletedDates[dateKey] ?? false);

    final updatedHabit = habit.copyWith(completedDates: updatedCompletedDates);
    await _habitService.add(updatedHabit);
  }

  Future<void> deleteHabit(String id) async {
    await _habitService.delete(id);
  }

  void reorderHabits(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) newIndex -= 1;
    final habits = List<HabitModel>.from(state.habitsForSelectedDay);
    final item = habits.removeAt(oldIndex);
    habits.insert(newIndex, item);
    emit(state.copyWith(habitsForSelectedDay: habits));
  }

  Future<void> toggleCalendarFormat() async {
    final newFormat = state.calendarFormat == CalendarFormat.week
        ? CalendarFormat.month
        : CalendarFormat.week;
    emit(state.copyWith(calendarFormat: newFormat));
  }

  Future<Set<DateTime>> _computeMarkedDates(
      List<HabitModel> allHabits, DateTime from, DateTime to) async {
    final marked = <DateTime>{};
    DateTime current = DateTime(from.year, from.month, from.day);
    final end = DateTime(to.year, to.month, to.day);
    while (!current.isAfter(end)) {
      final matches = _getHabitsForDate(allHabits, current);
      if (matches.isNotEmpty) {
        marked.add(DateTime(current.year, current.month, current.day));
      }
      current = current.add(const Duration(days: 1));
    }
    return marked;
  }

  List<HabitModel> _getHabitsForDate(
      List<HabitModel> allHabits, DateTime date) {
    return allHabits.where((habit) {
      final habitDay = date.weekday;
      final creationDate = habit.creationDate;
      final dateOnlyCreation =
          DateTime(creationDate.year, creationDate.month, creationDate.day);
      final dateOnlyCurrent = DateTime(date.year, date.month, date.day);

      switch (habit.recurrenceType) {
        case HabitRecurrenceType.daily:
          return dateOnlyCurrent.isAfter(dateOnlyCreation) ||
              dateOnlyCurrent.isAtSameMomentAs(dateOnlyCreation);
        case HabitRecurrenceType.weekly:
          return habit.daysOfWeek?.contains(habitDay) ?? false;
        case HabitRecurrenceType.everyXDays:
          if (habit.interval == null || date.isBefore(habit.creationDate)) {
            return false;
          }
          final difference =
              dateOnlyCurrent.difference(dateOnlyCreation).inDays;
          return difference % habit.interval! == 0;
      }
    }).toList();
  }

  @override
  Future<void> close() {
    _habitsSubscription.cancel();
    return super.close();
  }
}
