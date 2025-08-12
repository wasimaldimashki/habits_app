import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:habits_app/core/cache/hive_service.dart';
import 'package:habits_app/core/services/service_locator.dart';
import 'package:habits_app/features/models/habit_model.dart';
part 'habit_screen_state.dart';

class HabitScreenCubit extends Cubit<HabitScreenState> {
  HabitScreenCubit() : super(HabitScreenInitial());

  final GenericHiveService<HabitModel> _habitService = sl();

  Future<void> loadAllHabits() async {
    final allHabits = _habitService.getAll();
    emit(HabitScreenLoaded(
      allHabits: allHabits,
      selectedDate: state.selectedDate,
      habitsForSelectedDay: _getHabitsForDate(allHabits, state.selectedDate),
    ));
  }

  Future<void> onDaySelected(DateTime date) async {
    final habitsForDay = _getHabitsForDate(state.allHabits, date);
    emit(HabitScreenLoaded(
      allHabits: state.allHabits,
      selectedDate: date,
      habitsForSelectedDay: habitsForDay,
    ));
  }

  Future<void> toggleHabitCompletion(HabitModel habit) async {
    final dateKey = state.selectedDate.toIso8601String().substring(0, 10);
    final updatedCompletedDates = Map<String, bool>.from(habit.completedDates);
    updatedCompletedDates[dateKey] = !(updatedCompletedDates[dateKey] ?? false);

    final updatedHabit = habit.copyWith(completedDates: updatedCompletedDates);
    await _habitService.add(updatedHabit); // Assumes add also updates
    await loadAllHabits();
  }

  Future<void> deleteHabit(String id) async {
    await _habitService.delete(id);
    await loadAllHabits();
  }

  void reorderHabits(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final habits = List<HabitModel>.from(state.habitsForSelectedDay);
    final item = habits.removeAt(oldIndex);
    habits.insert(newIndex, item);
    emit(HabitScreenLoaded(
      allHabits: state.allHabits,
      selectedDate: state.selectedDate,
      habitsForSelectedDay: habits,
    ));
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
}
