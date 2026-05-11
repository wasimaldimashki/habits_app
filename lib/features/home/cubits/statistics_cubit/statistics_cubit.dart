import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:habits_app/core/cache/hive_service.dart';
import 'package:habits_app/core/services/service_locator.dart';
import 'package:habits_app/features/models/habit_model.dart';
import 'package:table_calendar/table_calendar.dart';

part 'statistics_state.dart';

class StatisticsCubit extends Cubit<StatisticsState> {
  final GenericHiveService<HabitModel> _habitService =
      sl<GenericHiveService<HabitModel>>();

  late final StreamSubscription<List<HabitModel>> _habitSubscription;

  StatisticsCubit() : super(StatisticsInitial()) {
    _habitSubscription = _habitService.itemsStream.listen((habits) {
      loadStatistics();
    });
  }

  @override
  Future<void> close() {
    _habitSubscription.cancel();
    return super.close();
  }

  Future<void> loadStatistics() async {
    emit(StatisticsLoading());
    try {
      final habits = _habitService.getAll();
      if (habits.isEmpty) {
        emit(const StatisticsLoaded(
            completionRate: 0.0,
            completedDaysLast7: 0,
            completedDaysLast30: 0,
            totalHabits: 0,
            longestStreak: 0,
            habitsCompletedToday: 0,
            currentStreak: 0,
            weeklyActivity: {}));
        return;
      }

      // Calculate statistics
      final completionRate = _calculateCompletionRate(habits);
      final completedDaysLast7 = _calculateCompletedDays(habits, days: 7);
      final completedDaysLast30 = _calculateCompletedDays(habits, days: 30);
      final totalHabits = habits.length;
      final longestStreak = _calculateLongestStreak(habits);
      final currentStreak = _calculateCurrentStreak(habits);
      final habitsCompletedToday = _calculateHabitsCompletedToday(habits);
      final weeklyActivity = _calculateWeeklyActivity(habits);

      emit(StatisticsLoaded(
        completionRate: completionRate,
        completedDaysLast7: completedDaysLast7,
        completedDaysLast30: completedDaysLast30,
        totalHabits: totalHabits,
        longestStreak: longestStreak,
        currentStreak: currentStreak,
        habitsCompletedToday: habitsCompletedToday,
        weeklyActivity: weeklyActivity,
      ));
    } catch (e) {
      emit(StatisticsError(errorMessage: 'Failed to load statistics: $e'));
    }
  }

  /// Calculates the overall completion rate of all habits.
  /// Uses `fold` to sum the completed and possible days in a single pass.
  double _calculateCompletionRate(List<HabitModel> habits) {
    if (habits.isEmpty) return 0.0;

    // Using fold to calculate totalCompletedDays and totalPossibleDays
    final completionData = habits.fold<Map<String, int>>(
      {'completed': 0, 'possible': 0},
      (previousValue, habit) {
        return {
          'completed':
              previousValue['completed']! + habit.completedDates.length,
          'possible':
              previousValue['possible']! + _calculatePossibleDays(habit),
        };
      },
    );

    final int totalCompletedDays = completionData['completed']!;
    final int totalPossibleDays = completionData['possible']!;

    return totalPossibleDays > 0 ? totalCompletedDays / totalPossibleDays : 0.0;
  }

  /// Calculates the total possible days for a habit since its creation.
  /// The while loop is the most readable approach for this stateful calculation.
  int _calculatePossibleDays(HabitModel habit) {
    final now = DateTime.now();
    int count = 0;
    DateTime date = habit.creationDate;

    while (date.isBefore(now) || isSameDay(date, now)) {
      if (habit.recurrenceType == HabitRecurrenceType.daily) {
        count++;
      } else if (habit.recurrenceType == HabitRecurrenceType.weekly) {
        if (habit.daysOfWeek?.contains(date.weekday) ?? false) {
          count++;
        }
      } else if (habit.recurrenceType == HabitRecurrenceType.everyXDays) {
        if (habit.interval != null && habit.interval! > 0) {
          if ((isSameDay(date, habit.creationDate) ||
              date.difference(habit.creationDate).inDays % habit.interval! ==
                  0)) {
            count++;
          }
        }
      }
      date = date.add(const Duration(days: 1));
    }
    return count;
  }

  /// Calculates the number of unique days where at least one habit was completed.
  int _calculateCompletedDays(List<HabitModel> habits, {required int days}) {
    final now = DateTime.now();
    final cutoffDate =
        DateTime(now.year, now.month, now.day).subtract(Duration(days: days));

    // Get unique dates across all habits
    final allCompletedDates =
        habits.expand((habit) => habit.completedDates.keys).toSet();

    // Filter and count unique days
    return allCompletedDates.where((dateString) {
      final date = DateTime.parse(dateString);
      return date.isAfter(cutoffDate) || isSameDay(date, cutoffDate);
    }).length;
  }

  /// Calculates the longest strike across all habits.
  int _calculateLongestStreak(List<HabitModel> habits) {
    if (habits.isEmpty) return 0;
    return habits
        .map(_calculateLongestStreakForHabit)
        .fold(0, (a, b) => max(a, b));
  }

  /// Helper function to calculate the strike for a single habit.
  int _calculateLongestStreakForHabit(HabitModel habit) {
    if (habit.completedDates.isEmpty) return 0;

    final sortedDates = habit.completedDates.keys
        .map((e) => DateTime.parse(e))
        .toList()
      ..sort();

    int currentStreak = 0;
    int maxHabitStreak = 0;

    for (int i = 0; i < sortedDates.length; i++) {
      if (i == 0 ||
          !isSameDay(sortedDates[i],
              sortedDates[i - 1].add(const Duration(days: 1)))) {
        currentStreak = 1;
      } else {
        currentStreak++;
      }
      maxHabitStreak = max(maxHabitStreak, currentStreak);
    }
    return maxHabitStreak;
  }

  /// Calculates the current strike across all habits.
  int _calculateCurrentStreak(List<HabitModel> habits) {
    if (habits.isEmpty) return 0;
    return habits
        .map(_calculateCurrentStreakForHabit)
        .fold(0, (a, b) => max(a, b));
  }

  int _calculateCurrentStreakForHabit(HabitModel habit) {
    if (habit.completedDates.isEmpty) return 0;

    final sortedDates = habit.completedDates.keys
        .map((e) => DateTime.parse(e))
        .toList()
      ..sort((a, b) => b.compareTo(a)); // Sort descending

    final today = DateTime.now();
    final yesterday = today.subtract(const Duration(days: 1));

    if (!isSameDay(sortedDates[0], today) &&
        !isSameDay(sortedDates[0], yesterday)) {
      return 0;
    }

    int streak = 0;
    DateTime checkDate = isSameDay(sortedDates[0], today) ? today : yesterday;

    for (var date in sortedDates) {
      if (isSameDay(date, checkDate)) {
        streak++;
        checkDate = checkDate.subtract(const Duration(days: 1));
      } else if (date.isBefore(checkDate)) {
        break;
      }
    }
    return streak;
  }

  Map<DateTime, int> _calculateWeeklyActivity(List<HabitModel> habits) {
    final Map<DateTime, int> activity = {};
    final now = DateTime.now();
    for (int i = 6; i >= 0; i--) {
      final date =
          DateTime(now.year, now.month, now.day).subtract(Duration(days: i));
      int count = 0;
      for (var habit in habits) {
        if (habit.isCompletedForDate(date)) {
          count++;
        }
      }
      activity[date] = count;
    }
    return activity;
  }

  /// Calculates the number of habits completed today.
  /// Uses `where` to filter habits and `any` to check for completion today.
  int _calculateHabitsCompletedToday(List<HabitModel> habits) {
    final today = DateTime.now();
    return habits
        .where((habit) => habit.completedDates.keys
            .any((dateString) => isSameDay(DateTime.parse(dateString), today)))
        .length;
  }
}
