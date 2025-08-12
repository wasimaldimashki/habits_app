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

  StatisticsCubit() : super(StatisticsInitial());

  Future<void> loadStatistics() async {
    emit(StatisticsLoading());
    try {
      final habits = _habitService.getAll();
      if (habits.isEmpty) {
        emit(StatisticsLoaded(
          completionRate: 0.0,
          completedDaysLast7: 0,
          completedDaysLast30: 0,
          totalHabits: 0,
          longestStreak: 0,
          habitsCompletedToday: 0,
        ));
        return;
      }

      // Calculate statistics
      final completionRate = _calculateCompletionRate(habits);
      final completedDaysLast7 = _calculateCompletedDays(habits, days: 7);
      final completedDaysLast30 = _calculateCompletedDays(habits, days: 30);
      final totalHabits = habits.length;
      final longestStreak = _calculateLongestStreak(habits);
      final habitsCompletedToday = _calculateHabitsCompletedToday(habits);

      emit(StatisticsLoaded(
        completionRate: completionRate,
        completedDaysLast7: completedDaysLast7,
        completedDaysLast30: completedDaysLast30,
        totalHabits: totalHabits,
        longestStreak: longestStreak,
        habitsCompletedToday: habitsCompletedToday,
      ));
    } catch (e) {
      emit(StatisticsError(errorMessage: 'Failed to load statistics: $e'));
    }
  }

  double _calculateCompletionRate(List<HabitModel> habits) {
    int totalCompletedDays = 0;
    int totalPossibleDays = 0;

    for (var habit in habits) {
      // Calculate total completed days for this habit
      totalCompletedDays += habit.completedDates.length;

      // Calculate total possible days for this habit since its creation
      totalPossibleDays += _calculatePossibleDays(habit);
    }

    if (totalPossibleDays == 0) {
      return 0.0;
    }
    return totalCompletedDays / totalPossibleDays;
  }

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
        // For 'every X days', we check if the difference in days is a multiple of the interval.
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

  int _calculateCompletedDays(List<HabitModel> habits, {required int days}) {
    int completedCount = 0;
    final now = DateTime.now();
    final cutoffDate = now.subtract(Duration(days: days));

    for (var habit in habits) {
      // Corrected the loop to handle DateTime objects directly
      for (var dateString in habit.completedDates.keys) {
        final date = DateTime.parse(dateString);
        if (date.isAfter(cutoffDate) &&
            (date.isBefore(now) || isSameDay(date, now))) {
          completedCount++;
        }
      }
    }
    return completedCount;
  }

  // New logic to calculate the longest streak of any habit
  int _calculateLongestStreak(List<HabitModel> habits) {
    int maxGlobalStreak = 0;

    for (var habit in habits) {
      if (habit.completedDates.isEmpty) continue;

      // Parse and sort dates to easily check for consecutive days
      final sortedDates = habit.completedDates.keys
          .map((e) => DateTime.parse(e))
          .toList()
        ..sort();

      int currentStreak = 0;
      int maxHabitStreak = 0;

      for (int i = 0; i < sortedDates.length; i++) {
        // If it's the first date or not consecutive, start a new streak
        if (i == 0 ||
            !isSameDay(sortedDates[i],
                sortedDates[i - 1].add(const Duration(days: 1)))) {
          currentStreak = 1;
        } else {
          // If it is consecutive, increment the streak
          currentStreak++;
        }
        // Update the maximum streak for this specific habit
        maxHabitStreak = max(maxHabitStreak, currentStreak);
      }
      // Update the overall maximum streak
      maxGlobalStreak = max(maxGlobalStreak, maxHabitStreak);
    }
    return maxGlobalStreak;
  }

  // New logic to calculate the number of habits completed today
  int _calculateHabitsCompletedToday(List<HabitModel> habits) {
    int completedTodayCount = 0;
    final today = DateTime.now();

    for (var habit in habits) {
      // Check if any of the completed dates for this habit matches today's date
      final isCompletedToday = habit.completedDates.keys
          .any((dateString) => isSameDay(DateTime.parse(dateString), today));
      if (isCompletedToday) {
        completedTodayCount++;
      }
    }
    return completedTodayCount;
  }
}
