import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:habits_app/core/cache/cache_service.dart';

final sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  // It will be created only ONCE, for simple key-value pairs
  sl.registerSingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );

  // Registering the Hive Box for Habit data
  // This will open the box asynchronously and make it available as a singleton.
  sl.registerSingletonAsync<Box>(
    () => Hive.openBox('habits_box'),
  );

  sl.registerLazySingleton<CacheService>(
    () => CacheService(sharedPreferences: sl()),
  );

  // You would register your repositories here, e.g.:
  // sl.registerLazySingleton<HabitRepository>(
  //   () => HabitRepositoryImpl(hiveBox: sl(), sharedPrefs: sl()),
  // );
}
