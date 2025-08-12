import 'package:get_it/get_it.dart';
import 'package:habits_app/core/cache/hive_service.dart';
import 'package:habits_app/core/cache/cache_service.dart';
import 'package:habits_app/features/home/cubits/profile_header_cubit/profile_header_cubit.dart';
import 'package:habits_app/features/home/cubits/statistics_cubit/statistics_cubit.dart';
import 'package:habits_app/features/models/habit_model.dart';
import 'package:habits_app/features/models/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:habits_app/core/cache/hive_adapters.dart';

final sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  // 1. Initialize Hive and register all adapters.
  await Hive.initFlutter();
  await registerHiveAdapters();

  sl.registerSingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );

  sl.registerSingletonAsync<GenericHiveService<UserModel>>(
    () async {
      final service = GenericHiveService<UserModel>('user_box');
      await service.openBox();
      return service;
    },
  );
  sl.registerSingletonAsync<GenericHiveService<HabitModel>>(
    () async {
      final service = GenericHiveService<HabitModel>('habits_box');
      await service.openBox();
      return service;
    },
  );
  sl.registerLazySingleton<CacheService>(
    () => CacheService(sharedPreferences: sl()),
  );
  sl.registerFactory<StatisticsCubit>(() => StatisticsCubit());
  sl.registerFactory<ProfileHeaderCubit>(() => ProfileHeaderCubit());
}
