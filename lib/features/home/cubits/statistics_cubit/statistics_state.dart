part of 'statistics_cubit.dart';

abstract class StatisticsState extends Equatable {
  const StatisticsState();

  @override
  List<Object> get props => [];
}

class StatisticsInitial extends StatisticsState {}

class StatisticsLoading extends StatisticsState {}

class StatisticsLoaded extends StatisticsState {
  final double completionRate;
  final int completedDaysLast7;
  final int completedDaysLast30;
  final int longestStreak;
  final int totalHabits;
  final int habitsCompletedToday;

  const StatisticsLoaded({
    required this.completionRate,
    required this.completedDaysLast7,
    required this.completedDaysLast30,
    required this.longestStreak,
    required this.totalHabits,
    required this.habitsCompletedToday,
  });

  @override
  List<Object> get props => [
        completionRate,
        completedDaysLast7,
        completedDaysLast30,
        longestStreak,
        totalHabits,
        habitsCompletedToday,
      ];
}

class StatisticsError extends StatisticsState {
  final String errorMessage;

  const StatisticsError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
