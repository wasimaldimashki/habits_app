import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:habits_app/core/cache/hive_service.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/core/services/notification_service.dart';
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
  // bool get _isFormValid {
  //   if (state.habitName.isEmpty) return false;
  //   switch (state.recurrenceType) {
  //     case HabitRecurrenceType.daily:
  //       return true;
  //     case HabitRecurrenceType.weekly:
  //       return state.selectedDays.isNotEmpty;
  //     case HabitRecurrenceType.everyXDays:
  //       return state.everyXDaysInterval > 0;
  //   }
  // }

  void updateHabitName(String name) {
    bool isValid = name.isNotEmpty;
    if (state.recurrenceType == HabitRecurrenceType.weekly &&
        state.selectedDays.isEmpty) isValid = false;
    if (state.recurrenceType == HabitRecurrenceType.everyXDays &&
        state.everyXDaysInterval <= 0) isValid = false;

    emit(state.copyWith(habitName: name, isFormValid: isValid));
  }

  void updateHabitDescription(String description) =>
      emit(state.copyWith(habitDescription: description));

  void updateRecurrenceType(HabitRecurrenceType type) {
    bool isValid = state.habitName.isNotEmpty;
    if (type == HabitRecurrenceType.weekly && state.selectedDays.isEmpty)
      isValid = false;
    if (type == HabitRecurrenceType.everyXDays && state.everyXDaysInterval <= 0)
      isValid = false;

    emit(state.copyWith(recurrenceType: type, isFormValid: isValid));
  }

  void toggleSelectedDay(int day) {
    final List<int> newSelectedDays = List.from(state.selectedDays);
    if (newSelectedDays.contains(day)) {
      newSelectedDays.remove(day);
    } else {
      newSelectedDays.add(day);
    }

    bool isValid = state.habitName.isNotEmpty;
    if (state.recurrenceType == HabitRecurrenceType.weekly &&
        newSelectedDays.isEmpty) isValid = false;

    emit(state.copyWith(selectedDays: newSelectedDays, isFormValid: isValid));
  }

  void updateEveryXDaysInterval(int interval) {
    bool isValid = state.habitName.isNotEmpty;
    if (state.recurrenceType == HabitRecurrenceType.everyXDays && interval <= 0)
      isValid = false;

    emit(state.copyWith(everyXDaysInterval: interval, isFormValid: isValid));
  }

  void updateColor(int colorValue) =>
      emit(state.copyWith(colorValue: colorValue));

  void updateIcon(int iconCodePoint) =>
      emit(state.copyWith(iconCodePoint: iconCodePoint));

  void updateReminderTime(String? time) {
    if (time == null) {
      emit(state.copyWith(clearReminder: true));
    } else {
      emit(state.copyWith(reminderTime: time));
    }
  }

  // Save the new habit to Hive.
  Future<void> saveHabit() async {
    if (!state.isFormValid) return;

    emit(AddHabitLoading(
      habitName: state.habitName,
      habitDescription: state.habitDescription,
      recurrenceType: state.recurrenceType,
      selectedDays: state.selectedDays,
      everyXDaysInterval: state.everyXDaysInterval,
      colorValue: state.colorValue,
      iconCodePoint: state.iconCodePoint,
      reminderTime: state.reminderTime,
      isFormValid: state.isFormValid,
    ));

    try {
      final habitId = const Uuid().v4();
      final habit = HabitModel(
        id: habitId,
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
        colorValue: state.colorValue,
        iconCodePoint: state.iconCodePoint,
        reminderTime: state.reminderTime,
      );

      // Save the habit first — notification scheduling is best-effort and
      // must never prevent the habit from being stored.
      await _habitService.saveItem(habit.id, habit);

      // Schedule the daily reminder in a separate try-catch so a permission
      // failure or any other error does not roll back the saved habit.
      String? notificationWarning;
      if (state.reminderTime != null) {
        try {
          final timeParts = state.reminderTime!.split(':');
          final hour = int.parse(timeParts[0]);
          final minute = int.parse(timeParts[1]);
          await sl<NotificationService>().scheduleHabitReminder(
            id: habitId.hashCode,
            title: S.current.habit_reminder_title,
            body: S.current.habit_reminder_body(state.habitName),
            hour: hour,
            minute: minute,
          );
        } catch (e) {
          notificationWarning = e.toString();
        }
      }

      emit(AddHabitSuccess(
        notificationWarning: notificationWarning,
        habitName: state.habitName,
        habitDescription: state.habitDescription,
        recurrenceType: state.recurrenceType,
        selectedDays: state.selectedDays,
        everyXDaysInterval: state.everyXDaysInterval,
        colorValue: state.colorValue,
        iconCodePoint: state.iconCodePoint,
        reminderTime: state.reminderTime,
        isFormValid: state.isFormValid,
      ));
    } catch (e) {
      emit(AddHabitError(
        errorMessage: e.toString(),
        habitName: state.habitName,
        habitDescription: state.habitDescription,
        recurrenceType: state.recurrenceType,
        selectedDays: state.selectedDays,
        everyXDaysInterval: state.everyXDaysInterval,
        colorValue: state.colorValue,
        iconCodePoint: state.iconCodePoint,
        reminderTime: state.reminderTime,
        isFormValid: state.isFormValid,
      ));
    }
  }
}
