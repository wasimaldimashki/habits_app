import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:habits_app/core/cache/hive_service.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/core/services/service_locator.dart';
import 'package:habits_app/features/models/habit_model.dart';
import 'package:uuid/uuid.dart';

part 'add_habit_state.dart';

class AddHabitCubit extends Cubit<AddHabitState> {
  final GenericHiveService<HabitModel> _habitService =
      sl<GenericHiveService<HabitModel>>();

  AddHabitCubit() : super(AddHabitInitial());
  final formkey = GlobalKey<FormState>();

  // Helper method to check form validity based on the current state.
  bool get _isFormValid {
    if (state.habitName.isEmpty) return false;
    switch (state.recurrenceType) {
      case HabitRecurrenceType.daily:
        return true;
      case HabitRecurrenceType.weekly:
        return state.selectedDays.isNotEmpty;
      case HabitRecurrenceType.everyXDays:
        return state.everyXDaysInterval > 0;
    }
  }

  // A single emit function to update state based on current values and validity.
  void emitUpdatedState() {
    emit(AddHabitFormState(
      habitName: state.habitName,
      habitDescription: state.habitDescription,
      recurrenceType: state.recurrenceType,
      selectedDays: state.selectedDays,
      everyXDaysInterval: state.everyXDaysInterval,
      isFormValid: _isFormValid,
    ));
  }

  void updateHabitName(String name) {
    emit(AddHabitFormState(
      habitName: name,
      habitDescription: state.habitDescription,
      recurrenceType: state.recurrenceType,
      selectedDays: state.selectedDays,
      everyXDaysInterval: state.everyXDaysInterval,
      isFormValid: name.isNotEmpty,
    ));
  }

  void updateHabitDescription(String description) {
    emit(AddHabitFormState(
      habitName: state.habitName,
      habitDescription: description.isEmpty ? null : description,
      recurrenceType: state.recurrenceType,
      selectedDays: state.selectedDays,
      everyXDaysInterval: state.everyXDaysInterval,
      isFormValid: _isFormValid,
    ));
  }

  void updateRecurrenceType(HabitRecurrenceType type) {
    emit(AddHabitFormState(
      habitName: state.habitName,
      habitDescription: state.habitDescription,
      recurrenceType: type,
      selectedDays:
          type == HabitRecurrenceType.weekly ? state.selectedDays : const [],
      everyXDaysInterval:
          type == HabitRecurrenceType.everyXDays ? state.everyXDaysInterval : 1,
      isFormValid: _isFormValid,
    ));
  }

  void toggleSelectedDay(int day) {
    final List<int> newSelectedDays = List.from(state.selectedDays);
    if (newSelectedDays.contains(day)) {
      newSelectedDays.remove(day);
    } else {
      newSelectedDays.add(day);
    }
    emit(AddHabitFormState(
      habitName: state.habitName,
      habitDescription: state.habitDescription,
      recurrenceType: state.recurrenceType,
      selectedDays: newSelectedDays,
      everyXDaysInterval: state.everyXDaysInterval,
      isFormValid: _isFormValid,
    ));
  }

  void updateEveryXDaysInterval(int interval) {
    emit(AddHabitFormState(
      habitName: state.habitName,
      habitDescription: state.habitDescription,
      recurrenceType: state.recurrenceType,
      selectedDays: state.selectedDays,
      everyXDaysInterval: interval,
      isFormValid: _isFormValid,
    ));
  }

  // Save the new habit to Hive.
  Future<void> saveHabit() async {
    if (!_isFormValid) return;

    // Emit a loading state that carries the current form data.
    emit(AddHabitLoading(
      habitName: state.habitName,
      habitDescription: state.habitDescription,
      recurrenceType: state.recurrenceType,
      selectedDays: state.selectedDays,
      everyXDaysInterval: state.everyXDaysInterval,
      isFormValid: _isFormValid,
    ));

    try {
      final habit = HabitModel(
        id: const Uuid().v4(),
        name: state.habitName,
        description: state.habitDescription,
        recurrenceType: state.recurrenceType,
        daysOfWeek: state.recurrenceType == HabitRecurrenceType.weekly
            ? state.selectedDays
            : null,
        interval: state.recurrenceType == HabitRecurrenceType.everyXDays
            ? state.everyXDaysInterval
            : null,
        creationDate: DateTime.now(),
        completedDates: {},
      );

      await _habitService.saveItem(habit.id, habit);

      // After a successful save, emit a success state.
      emit(AddHabitSuccess(
        habitName: state.habitName,
        habitDescription: state.habitDescription,
        recurrenceType: state.recurrenceType,
        selectedDays: state.selectedDays,
        everyXDaysInterval: state.everyXDaysInterval,
        isFormValid: _isFormValid,
      ));
    } catch (e) {
      emit(AddHabitError(
        errorMessage: e.toString(),
        habitName: state.habitName,
        habitDescription: state.habitDescription,
        recurrenceType: state.recurrenceType,
        selectedDays: state.selectedDays,
        everyXDaysInterval: state.everyXDaysInterval,
        isFormValid: state.isFormValid,
      ));
    }
  }
}
