import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'habit_model.g.dart';

// Use a type id that is not used by other Hive models.
@HiveType(typeId: 2)
class HabitModel extends Equatable {
  // Unique ID for each habit
  @HiveField(0)
  final String id;
  // Name of the habit
  @HiveField(1)
  final String name;
  // Optional description for the habit
  @HiveField(2)
  final String? description;
  // Type of recurrence: daily, weekly, or every X days
  @HiveField(3)
  final HabitRecurrenceType recurrenceType;
  // For weekly habits, this will store the selected days (e.g., [1, 2] for Mon, Tue)
  @HiveField(4)
  final List<int>? daysOfWeek;
  // For every X days habits, this will store the interval (e.g., 3)
  @HiveField(5)
  final int? interval;
  // The date the habit was created
  @HiveField(6)
  final DateTime creationDate;
  // A map to track completion status by date
  // Key: date as string (e.g., "2025-08-12"), Value: true for completed, false for skipped.
  @HiveField(7)
  final Map<String, bool> completedDates;

  const HabitModel({
    required this.id,
    required this.name,
    this.description,
    required this.recurrenceType,
    this.daysOfWeek,
    this.interval,
    required this.creationDate,
    this.completedDates = const {},
  });

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        recurrenceType,
        daysOfWeek,
        interval,
        creationDate,
        completedDates,
      ];

  HabitModel copyWith({
    String? id,
    String? name,
    String? description,
    HabitRecurrenceType? recurrenceType,
    List<int>? daysOfWeek,
    int? interval,
    DateTime? creationDate,
    Map<String, bool>? completedDates,
  }) {
    return HabitModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      recurrenceType: recurrenceType ?? this.recurrenceType,
      daysOfWeek: daysOfWeek ?? this.daysOfWeek,
      interval: interval ?? this.interval,
      creationDate: creationDate ?? this.creationDate,
      completedDates: completedDates ?? this.completedDates,
    );
  }

  /// Checks if the habit was completed on a specific date.
  bool isCompletedForDate(DateTime date) {
    // Format the date to a string key in the format "YYYY-MM-DD"
    final dateKey = date.toIso8601String().substring(0, 10);
    // Return true if the map contains the date key and its value is true, otherwise false.
    return completedDates[dateKey] ?? false;
  }
}

// Enum for the recurrence type
@HiveType(typeId: 3)
enum HabitRecurrenceType {
  @HiveField(0)
  daily,
  @HiveField(1)
  weekly,
  @HiveField(2)
  everyXDays,
}
