import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
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
    required this.completedDates,
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
    ValueNotifier<String?>? description,
    HabitRecurrenceType? recurrenceType,
    ValueNotifier<List<int>?>? daysOfWeek,
    ValueNotifier<int?>? interval,
    DateTime? creationDate,
    Map<String, bool>? completedDates,
  }) {
    return HabitModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description != null ? description.value : this.description,
      recurrenceType: recurrenceType ?? this.recurrenceType,
      daysOfWeek: daysOfWeek != null ? daysOfWeek.value : this.daysOfWeek,
      interval: interval != null ? interval.value : this.interval,
      creationDate: creationDate ?? this.creationDate,
      completedDates: completedDates ?? this.completedDates,
    );
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
