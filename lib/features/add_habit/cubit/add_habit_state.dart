part of 'add_habit_cubit.dart';

sealed class AddHabitState extends Equatable {
  final String habitName;
  final String? habitDescription;
  final HabitRecurrenceType recurrenceType;
  final List<int> selectedDays;
  final int everyXDaysInterval;
  final bool isFormValid;

  final int colorValue;
  final int iconCodePoint;
  final String? reminderTime;

  const AddHabitState({
    this.habitName = '',
    this.habitDescription = '',
    this.recurrenceType = HabitRecurrenceType.daily,
    this.selectedDays = const [],
    this.everyXDaysInterval = 1,
    this.isFormValid = false,
    this.colorValue = 0xFF025EC4,
    this.iconCodePoint = 0xe30d,
    this.reminderTime,
  });

  @override
  List<Object?> get props => [
        habitName,
        habitDescription,
        recurrenceType,
        selectedDays,
        everyXDaysInterval,
        isFormValid,
        colorValue,
        iconCodePoint,
        reminderTime,
      ];

  AddHabitState copyWith({
    String? habitName,
    String? habitDescription,
    HabitRecurrenceType? recurrenceType,
    List<int>? selectedDays,
    int? everyXDaysInterval,
    bool? isFormValid,
    int? colorValue,
    int? iconCodePoint,
    String? reminderTime,
    bool clearDescription = false,
    bool clearReminder = false,
  }) {
    return AddHabitFormState(
      habitName: habitName ?? this.habitName,
      habitDescription:
          clearDescription ? null : (habitDescription ?? this.habitDescription),
      recurrenceType: recurrenceType ?? this.recurrenceType,
      selectedDays: selectedDays ?? this.selectedDays,
      everyXDaysInterval: everyXDaysInterval ?? this.everyXDaysInterval,
      isFormValid: isFormValid ?? this.isFormValid,
      colorValue: colorValue ?? this.colorValue,
      iconCodePoint: iconCodePoint ?? this.iconCodePoint,
      reminderTime: clearReminder ? null : (reminderTime ?? this.reminderTime),
    );
  }
}

final class AddHabitInitial extends AddHabitState {}

final class AddHabitFormState extends AddHabitState {
  const AddHabitFormState({
    required super.habitName,
    required super.habitDescription,
    required super.recurrenceType,
    required super.selectedDays,
    required super.everyXDaysInterval,
    required super.isFormValid,
    required super.colorValue,
    required super.iconCodePoint,
    required super.reminderTime,
  });
}

final class AddHabitLoading extends AddHabitState {
  const AddHabitLoading({
    required super.habitName,
    required super.habitDescription,
    required super.recurrenceType,
    required super.selectedDays,
    required super.everyXDaysInterval,
    required super.isFormValid,
    required super.colorValue,
    required super.iconCodePoint,
    required super.reminderTime,
  });
}

final class AddHabitSuccess extends AddHabitState {
  /// Non-null when the habit was saved but the notification could not be
  /// scheduled (e.g. exact-alarm permission not granted by the user).
  final String? notificationWarning;

  const AddHabitSuccess({
    this.notificationWarning,
    required super.habitName,
    required super.habitDescription,
    required super.recurrenceType,
    required super.selectedDays,
    required super.everyXDaysInterval,
    required super.isFormValid,
    required super.colorValue,
    required super.iconCodePoint,
    required super.reminderTime,
  });

  @override
  List<Object?> get props => [...super.props, notificationWarning];
}

final class AddHabitError extends AddHabitState {
  final String errorMessage;

  const AddHabitError({
    required this.errorMessage,
    required super.habitName,
    required super.habitDescription,
    required super.recurrenceType,
    required super.selectedDays,
    required super.everyXDaysInterval,
    required super.isFormValid,
    required super.colorValue,
    required super.iconCodePoint,
    required super.reminderTime,
  });

  @override
  List<Object?> get props => [
        ...super.props,
        errorMessage,
      ];
}
