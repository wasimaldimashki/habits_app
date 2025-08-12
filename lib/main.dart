import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:habits_app/core/app_observer/simple_bloc_observer.dart';
import 'package:habits_app/core/localization/localization_cubit.dart';
import 'package:habits_app/core/services/service_locator.dart';
import 'package:habits_app/core/theme/theme_cubit.dart';
import 'package:habits_app/core/theme/theme_manager.dart';
import 'package:habits_app/generated/l10n.dart';
import 'package:habits_app/routes/app_router.dart';
import 'package:path_provider/path_provider.dart' as path;
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  // Wait for all async singletons to be ready.
  await sl.allReady();
  PaintingBinding.instance.imageCache
    ..maximumSize = 100
    ..maximumSizeBytes = 100 << 20;
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await path.getTemporaryDirectory()).path),
  );

  // await FirebaseApi().initNotification();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(create: (context) => LocalizationCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return BlocBuilder<LocalizationCubit, Locale>(
            builder: (context, locale) {
              return ScreenUtilInit(
                designSize: const Size(375, 812),
                ensureScreenSize: true,
                useInheritedMediaQuery: true,
                minTextAdapt: true,
                splitScreenMode: true,
                builder: (context, child) => MaterialApp.router(
                  title: 'Habit App',
                  debugShowCheckedModeBanner: false,
                  theme: getLightApplicationTheme(),
                  darkTheme: getDarkApplicationTheme(),
                  themeMode: themeMode,
                  routerConfig: AppRouter.router,
                  localizationsDelegates: const [
                    S.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: S.delegate.supportedLocales,
                  locale: locale,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
