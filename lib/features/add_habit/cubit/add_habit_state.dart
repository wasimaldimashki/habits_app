part of 'add_habit_cubit.dart';

sealed class AddHabitState extends Equatable {
  final String habitName;
  final String? habitDescription;
  final HabitRecurrenceType recurrenceType;
  final List<int> selectedDays;
  final int everyXDaysInterval;
  final bool isFormValid;

  const AddHabitState({
    this.habitName = '',
    this.habitDescription = '',
    this.recurrenceType = HabitRecurrenceType.daily,
    this.selectedDays = const [],
    this.everyXDaysInterval = 1,
    this.isFormValid = false,
  });

  @override
  List<Object?> get props => [
        habitName,
        habitDescription,
        recurrenceType,
        selectedDays,
        everyXDaysInterval,
        isFormValid,
      ];
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
  });
}

final class AddHabitSuccess extends AddHabitState {
  const AddHabitSuccess({
    required super.habitName,
    required super.habitDescription,
    required super.recurrenceType,
    required super.selectedDays,
    required super.everyXDaysInterval,
    required super.isFormValid,
  });
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
  });

  @override
  List<Object?> get props => [
        ...super.props,
        errorMessage,
      ];
}
