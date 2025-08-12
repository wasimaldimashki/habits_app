import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:habits_app/core/app_observer/navigator_observer.dart';
import 'package:habits_app/core/keys/app_keys.dart';
import 'package:habits_app/features/home/home_screen.dart';
import 'package:habits_app/features/start/onboarding_screen.dart';
import 'package:habits_app/features/start/splash_screen.dart';
import 'package:habits_app/routes/app_routes.dart';
import 'package:habits_app/routes/unknown_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    navigatorKey: AppKeys.navigatorKey,
    initialLocation: AppRoutes.splashScreen,
    observers: [MyNavigatorObserver()],
    debugLogDiagnostics: true,
    routes: [
      //** Splash Screen **/
      GoRoute(
        name: 'Splash Screen',
        path: AppRoutes.splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      //** OnBoarding Screen **/
      GoRoute(
        name: 'OnBoarding Screen',
        path: AppRoutes.onBoardingScreen,
        builder: (context, state) => const OnboardingScreen(),
      ),
      //** Home Screen **/
      GoRoute(
        name: 'Home Screen',
        path: AppRoutes.homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      canPop: true,
      name: 'Unknown Page',
      child: const UnknownPage(),
    ),
  );
}
