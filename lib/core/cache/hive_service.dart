// import 'package:hive/hive.dart';

// class HiveService {
//   final Box _habitsBox;

//   // The constructor takes the Hive box as a dependency.
//   // This is where GetIt will inject the opened box.
//   HiveService(this._habitsBox);

//   /// Saves a new habit or updates an existing one.
//   /// Hive handles the key-value pair, so we use the habit's ID as the key.
//   Future<void> saveHabit(HabitModel habit) async {
//     await _habitsBox.put(habit.id, habit);
//   }

//   /// Retrieves a single habit by its ID.
//   HabitModel? getHabit(String id) {
//     return _habitsBox.get(id);
//   }

//   /// Retrieves all habits from the box.
//   /// Returns a list of HabitModel objects.
//   List<HabitModel> getAllHabits() {
//     return _habitsBox.values.cast<HabitModel>().toList();
//   }

//   /// Deletes a habit using its ID.
//   Future<void> deleteHabit(String id) async {
//     await _habitsBox.delete(id);
//   }

//   /// Clears all habits from the box.
//   Future<void> clearAllHabits() async {
//     await _habitsBox.clear();
//   }

//   /// Checks if a habit with a given ID exists.
//   bool habitExists(String id) {
//     return _habitsBox.containsKey(id);
//   }
// }

// // In setupServiceLocator, you would now register this service like so:
// /*
//   sl.registerLazySingleton<HiveService>(
//     () => HiveService(sl<Box>()),
//   );
// */
