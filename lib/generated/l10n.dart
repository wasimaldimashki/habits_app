// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get get_started {
    return Intl.message(
      'Get Started',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Loading`
  String get loading {
    return Intl.message(
      'Loading',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Warning`
  String get warning {
    return Intl.message(
      'Warning',
      name: 'warning',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get change_language {
    return Intl.message(
      'Change Language',
      name: 'change_language',
      desc: '',
      args: [],
    );
  }

  /// `Habit App`
  String get app_name {
    return Intl.message(
      'Habit App',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Habit App!`
  String get welcome_to_habit_app {
    return Intl.message(
      'Welcome to Habit App!',
      name: 'welcome_to_habit_app',
      desc: '',
      args: [],
    );
  }

  /// `Let's get you set up.`
  String get lets_get_you_set_up {
    return Intl.message(
      'Let\'s get you set up.',
      name: 'lets_get_you_set_up',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name..`
  String get enter_name_hint {
    return Intl.message(
      'Enter your name..',
      name: 'enter_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your name`
  String get please_enter_your_name {
    return Intl.message(
      'Please enter your name',
      name: 'please_enter_your_name',
      desc: '',
      args: [],
    );
  }

  /// `Select your Gender`
  String get select_your_gender {
    return Intl.message(
      'Select your Gender',
      name: 'select_your_gender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue_btn {
    return Intl.message(
      'Continue',
      name: 'continue_btn',
      desc: '',
      args: [],
    );
  }

  /// `Habits`
  String get habits {
    return Intl.message(
      'Habits',
      name: 'habits',
      desc: '',
      args: [],
    );
  }

  /// `No Habits Added`
  String get no_habits_added {
    return Intl.message(
      'No Habits Added',
      name: 'no_habits_added',
      desc: '',
      args: [],
    );
  }

  /// `Try to add some`
  String get try_to_add_some {
    return Intl.message(
      'Try to add some',
      name: 'try_to_add_some',
      desc: '',
      args: [],
    );
  }

  /// `Create New Habit`
  String get create_new_habit {
    return Intl.message(
      'Create New Habit',
      name: 'create_new_habit',
      desc: '',
      args: [],
    );
  }

  /// `Habit Name`
  String get habit_name {
    return Intl.message(
      'Habit Name',
      name: 'habit_name',
      desc: '',
      args: [],
    );
  }

  /// `Habit Name`
  String get habit_name_hint {
    return Intl.message(
      'Habit Name',
      name: 'habit_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Habit Description (Optional)`
  String get description_hint {
    return Intl.message(
      'Habit Description (Optional)',
      name: 'description_hint',
      desc: '',
      args: [],
    );
  }

  /// `Repeat Days`
  String get repeat_days {
    return Intl.message(
      'Repeat Days',
      name: 'repeat_days',
      desc: '',
      args: [],
    );
  }

  /// `Daily`
  String get daily {
    return Intl.message(
      'Daily',
      name: 'daily',
      desc: '',
      args: [],
    );
  }

  /// `Weekly`
  String get weekly {
    return Intl.message(
      'Weekly',
      name: 'weekly',
      desc: '',
      args: [],
    );
  }

  /// `Every X Days`
  String get every_x_days {
    return Intl.message(
      'Every X Days',
      name: 'every_x_days',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get statistics {
    return Intl.message(
      'Statistics',
      name: 'statistics',
      desc: '',
      args: [],
    );
  }

  /// `Overview`
  String get overview {
    return Intl.message(
      'Overview',
      name: 'overview',
      desc: '',
      args: [],
    );
  }

  /// `Total Habits`
  String get total_habits {
    return Intl.message(
      'Total Habits',
      name: 'total_habits',
      desc: '',
      args: [],
    );
  }

  /// `Streak`
  String get streak {
    return Intl.message(
      'Streak',
      name: 'streak',
      desc: '',
      args: [],
    );
  }

  /// `days`
  String get days {
    return Intl.message(
      'days',
      name: 'days',
      desc: '',
      args: [],
    );
  }

  /// `Habits Completed Today`
  String get habits_completed_today {
    return Intl.message(
      'Habits Completed Today',
      name: 'habits_completed_today',
      desc: '',
      args: [],
    );
  }

  /// `Days Completed (Last 7 Days)`
  String get completed_last_7 {
    return Intl.message(
      'Days Completed (Last 7 Days)',
      name: 'completed_last_7',
      desc: '',
      args: [],
    );
  }

  /// `Days Completed (Last 30 Days)`
  String get completed_last_30 {
    return Intl.message(
      'Days Completed (Last 30 Days)',
      name: 'completed_last_30',
      desc: '',
      args: [],
    );
  }

  /// `Completion Rate`
  String get completion_rate {
    return Intl.message(
      'Completion Rate',
      name: 'completion_rate',
      desc: '',
      args: [],
    );
  }

  /// `No habits yet!`
  String get no_habits_yet {
    return Intl.message(
      'No habits yet!',
      name: 'no_habits_yet',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Update User Profile`
  String get update_user_profile {
    return Intl.message(
      'Update User Profile',
      name: 'update_user_profile',
      desc: '',
      args: [],
    );
  }

  /// `Reset App Data`
  String get reset_app_data {
    return Intl.message(
      'Reset App Data',
      name: 'reset_app_data',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get about_us {
    return Intl.message(
      'About Us',
      name: 'about_us',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Reset`
  String get confirm_reset {
    return Intl.message(
      'Confirm Reset',
      name: 'confirm_reset',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to reset all app data? This action cannot be undone.`
  String get reset_confirm_message {
    return Intl.message(
      'Are you sure you want to reset all app data? This action cannot be undone.',
      name: 'reset_confirm_message',
      desc: '',
      args: [],
    );
  }

  /// `Manage Habits`
  String get manage_habits {
    return Intl.message(
      'Manage Habits',
      name: 'manage_habits',
      desc: '',
      args: [],
    );
  }

  /// `No habits to manage.`
  String get no_habits_to_manage {
    return Intl.message(
      'No habits to manage.',
      name: 'no_habits_to_manage',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Add Habit`
  String get add_habit {
    return Intl.message(
      'Add Habit',
      name: 'add_habit',
      desc: '',
      args: [],
    );
  }

  /// `Habit "{name}" deleted`
  String habit_deleted(String name) {
    return Intl.message(
      'Habit "$name" deleted',
      name: 'habit_deleted',
      desc: '',
      args: [name],
    );
  }

  /// `Undo`
  String get undo {
    return Intl.message(
      'Undo',
      name: 'undo',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this habit?`
  String get delete_habit_confirm {
    return Intl.message(
      'Are you sure you want to delete this habit?',
      name: 'delete_habit_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Update Profile`
  String get update_profile {
    return Intl.message(
      'Update Profile',
      name: 'update_profile',
      desc: '',
      args: [],
    );
  }

  /// `Profile updated successfully!`
  String get profile_updated_successfully {
    return Intl.message(
      'Profile updated successfully!',
      name: 'profile_updated_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Update Profile`
  String get update_profile_btn {
    return Intl.message(
      'Update Profile',
      name: 'update_profile_btn',
      desc: '',
      args: [],
    );
  }

  /// `Build Good Habits`
  String get onboarding_title_1 {
    return Intl.message(
      'Build Good Habits',
      name: 'onboarding_title_1',
      desc: '',
      args: [],
    );
  }

  /// `Start building positive habits that will transform your life one day at a time.`
  String get onboarding_desc_1 {
    return Intl.message(
      'Start building positive habits that will transform your life one day at a time.',
      name: 'onboarding_desc_1',
      desc: '',
      args: [],
    );
  }

  /// `Track Your Progress`
  String get onboarding_title_2 {
    return Intl.message(
      'Track Your Progress',
      name: 'onboarding_title_2',
      desc: '',
      args: [],
    );
  }

  /// `Monitor your daily progress and see how far you've come with detailed statistics.`
  String get onboarding_desc_2 {
    return Intl.message(
      'Monitor your daily progress and see how far you\'ve come with detailed statistics.',
      name: 'onboarding_desc_2',
      desc: '',
      args: [],
    );
  }

  /// `Achieve Your Goals`
  String get onboarding_title_3 {
    return Intl.message(
      'Achieve Your Goals',
      name: 'onboarding_title_3',
      desc: '',
      args: [],
    );
  }

  /// `Stay consistent and achieve your goals with reminders and streak tracking.`
  String get onboarding_desc_3 {
    return Intl.message(
      'Stay consistent and achieve your goals with reminders and streak tracking.',
      name: 'onboarding_desc_3',
      desc: '',
      args: [],
    );
  }

  /// `Unknown Page`
  String get unknown_page {
    return Intl.message(
      'Unknown Page',
      name: 'unknown_page',
      desc: '',
      args: [],
    );
  }

  /// `This page is currently unavailable.`
  String get page_unavailable {
    return Intl.message(
      'This page is currently unavailable.',
      name: 'page_unavailable',
      desc: '',
      args: [],
    );
  }

  /// `Mon`
  String get mon {
    return Intl.message(
      'Mon',
      name: 'mon',
      desc: '',
      args: [],
    );
  }

  /// `Tue`
  String get tue {
    return Intl.message(
      'Tue',
      name: 'tue',
      desc: '',
      args: [],
    );
  }

  /// `Wed`
  String get wed {
    return Intl.message(
      'Wed',
      name: 'wed',
      desc: '',
      args: [],
    );
  }

  /// `Thu`
  String get thu {
    return Intl.message(
      'Thu',
      name: 'thu',
      desc: '',
      args: [],
    );
  }

  /// `Fri`
  String get fri {
    return Intl.message(
      'Fri',
      name: 'fri',
      desc: '',
      args: [],
    );
  }

  /// `Sat`
  String get sat {
    return Intl.message(
      'Sat',
      name: 'sat',
      desc: '',
      args: [],
    );
  }

  /// `Sun`
  String get sun {
    return Intl.message(
      'Sun',
      name: 'sun',
      desc: '',
      args: [],
    );
  }

  /// `Every {count} days`
  String interval_days(int count) {
    return Intl.message(
      'Every $count days',
      name: 'interval_days',
      desc: '',
      args: [count],
    );
  }

  /// `Select days`
  String get select_days {
    return Intl.message(
      'Select days',
      name: 'select_days',
      desc: '',
      args: [],
    );
  }

  /// `Select interval`
  String get select_interval {
    return Intl.message(
      'Select interval',
      name: 'select_interval',
      desc: '',
      args: [],
    );
  }

  /// `No Data`
  String get no_data {
    return Intl.message(
      'No Data',
      name: 'no_data',
      desc: '',
      args: [],
    );
  }

  /// `Select a time`
  String get select_a_time {
    return Intl.message(
      'Select a time',
      name: 'select_a_time',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
