import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:habits_app/core/app_observer/navigator_observer.dart';
import 'package:habits_app/core/keys/app_keys.dart';
import 'package:habits_app/features/about_us/about_us.dart';
import 'package:habits_app/features/add_habit/cubit/add_habit_cubit.dart';
import 'package:habits_app/features/add_habit/screens/add_habit.dart';
import 'package:habits_app/features/home/cubits/habit_screen_cubit/habit_screen_cubit.dart';
import 'package:habits_app/features/home/home_screen.dart';
import 'package:habits_app/features/manage_habit/screens/manage_habit.dart';
import 'package:habits_app/features/signin/cubit/signin_cubit.dart';
import 'package:habits_app/features/signin/siginin_screen.dart';
import 'package:habits_app/features/start/onboarding_screen.dart';
import 'package:habits_app/features/start/splash_screen.dart';
import 'package:habits_app/features/update_profile/update_profile.dart';
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
      //** OnBoarding Screen **/
      GoRoute(
        name: 'signIn Screen',
        path: AppRoutes.signInScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => SigninCubit(),
          child: const SigininScreen(),
        ),
      ),
      //** Home Screen **/
      GoRoute(
        name: 'Home Screen',
        path: AppRoutes.homeScreen,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => HabitScreenCubit()..loadAllHabits(),
            ),
          ],
          child: const HomeScreen(),
        ),
      ),
      //** Add Habit Screen **/
      GoRoute(
        name: 'Add Habit Screen',
        path: AppRoutes.addHabitScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => AddHabitCubit(),
          child: const AddHabitScreen(),
        ),
      ),
      //** About us Screen **/
      GoRoute(
        name: 'About Us Screen',
        path: AppRoutes.aboutUsScreen,
        builder: (context, state) => const AboutUsScreen(),
      ),
      //** Update Profile Screen **/
      GoRoute(
        name: 'Update Profile Screen',
        path: AppRoutes.updateProfileScreen,
        builder: (context, state) => const UpdateProfileScreen(),
      ),
      //** Manage Habit Screen **/
      GoRoute(
        name: 'Manage Habit Screen',
        path: AppRoutes.manageHabitScreen,
        builder: (context, state) => const ManageHabitScreen(),
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
