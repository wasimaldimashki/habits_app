import 'package:habits_app/features/models/gender_enum.dart';
import 'package:habits_app/features/models/habit_model.dart';
import 'package:habits_app/features/models/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// A single function to register all necessary Hive adapters.
Future<void> registerHiveAdapters() async {
  Hive.registerAdapter(UserModelAdapter());
  Hive.registerAdapter(GenderAdapter());
  Hive.registerAdapter(HabitModelAdapter());
  Hive.registerAdapter(HabitRecurrenceTypeAdapter());
}
