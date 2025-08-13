part of 'manage_habit_cubit.dart';

abstract class ManageHabitState extends Equatable {
  const ManageHabitState();

  @override
  List<Object> get props => [];
}

class ManageHabitInitial extends ManageHabitState {}

class ManageHabitLoading extends ManageHabitState {}

class ManageHabitLoaded extends ManageHabitState {
  final List<HabitModel> habits;

  const ManageHabitLoaded({required this.habits});

  @override
  List<Object> get props => [habits];
}

class ManageHabitError extends ManageHabitState {
  final String message;

  const ManageHabitError({required this.message});

  @override
  List<Object> get props => [message];
}
