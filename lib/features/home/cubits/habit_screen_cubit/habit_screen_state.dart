part of 'habit_screen_cubit.dart';

abstract class HabitScreenState extends Equatable {
  final List<HabitModel> allHabits;
  final List<HabitModel> habitsForSelectedDay;
  final DateTime selectedDate;

  const HabitScreenState({
    this.allHabits = const [],
    this.habitsForSelectedDay = const [],
    required this.selectedDate,
  });

  @override
  List<Object?> get props => [
        allHabits,
        habitsForSelectedDay,
        selectedDate,
      ];
}

class HabitScreenInitial extends HabitScreenState {
  HabitScreenInitial() : super(selectedDate: DateTime.now());
}

class HabitScreenLoading extends HabitScreenState {
  const HabitScreenLoading({required super.selectedDate});
}

class HabitScreenLoaded extends HabitScreenState {
  const HabitScreenLoaded({
    required super.allHabits,
    required super.selectedDate,
    required super.habitsForSelectedDay,
  });
}

class HabitScreenError extends HabitScreenState {
  final String errorMessage;

  HabitScreenError({
    required this.errorMessage,
    super.allHabits,
    super.habitsForSelectedDay,
    DateTime? selectedDate,
  }) : super(
          selectedDate: selectedDate ?? DateTime.now(),
        );

  @override
  List<Object?> get props => [
        ...super.props,
        errorMessage,
      ];
}
