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

  /// `Hi`
  String get welcome {
    return Intl.message(
      'Hi',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to`
  String get welcome_to {
    return Intl.message(
      'Welcome to',
      name: 'welcome_to',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get welcome_back {
    return Intl.message(
      'Welcome Back',
      name: 'welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `Pull Up`
  String get pull_up {
    return Intl.message(
      'Pull Up',
      name: 'pull_up',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Email`
  String get enter_email {
    return Intl.message(
      'Enter Your Email',
      name: 'enter_email',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your name`
  String get please_enter_user_name {
    return Intl.message(
      'Please enter your name',
      name: 'please_enter_user_name',
      desc: '',
      args: [],
    );
  }

  /// `User name must be 4 characters at least`
  String get invalid_user_name {
    return Intl.message(
      'User name must be 4 characters at least',
      name: 'invalid_user_name',
      desc: '',
      args: [],
    );
  }

  /// `You can not add more that 3 numbers`
  String get cannot_add_more_numbers {
    return Intl.message(
      'You can not add more that 3 numbers',
      name: 'cannot_add_more_numbers',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Just Skip`
  String get justSkip {
    return Intl.message(
      'Just Skip',
      name: 'justSkip',
      desc: '',
      args: [],
    );
  }

  /// `Re-Enter password`
  String get re_password {
    return Intl.message(
      'Re-Enter password',
      name: 're_password',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your registered user name to verify the account`
  String get please_enter_your_registered_user_name {
    return Intl.message(
      'Please enter your registered user name to verify the account',
      name: 'please_enter_your_registered_user_name',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email to verify the account`
  String get please_enter_your_registered_email {
    return Intl.message(
      'Please enter your email to verify the account',
      name: 'please_enter_your_registered_email',
      desc: '',
      args: [],
    );
  }

  /// `Forget password?`
  String get forget_password {
    return Intl.message(
      'Forget password?',
      name: 'forget_password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Register Now`
  String get create_account {
    return Intl.message(
      'Register Now',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `If you do not have an account`
  String get dont_have_account {
    return Intl.message(
      'If you do not have an account',
      name: 'dont_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Where Efficiency Meets\nEmpowerment`
  String get welcome_auth_message {
    return Intl.message(
      'Where Efficiency Meets\nEmpowerment',
      name: 'welcome_auth_message',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
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

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `About us`
  String get about_us {
    return Intl.message(
      'About us',
      name: 'about_us',
      desc: '',
      args: [],
    );
  }

  /// `Links`
  String get links {
    return Intl.message(
      'Links',
      name: 'links',
      desc: '',
      args: [],
    );
  }

  /// `Random`
  String get random {
    return Intl.message(
      'Random',
      name: 'random',
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

  /// `Image`
  String get image {
    return Intl.message(
      'Image',
      name: 'image',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Request`
  String get request {
    return Intl.message(
      'Request',
      name: 'request',
      desc: '',
      args: [],
    );
  }

  /// `Book a meeting`
  String get Book_a_meeting {
    return Intl.message(
      'Book a meeting',
      name: 'Book_a_meeting',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get menu {
    return Intl.message(
      'Menu',
      name: 'menu',
      desc: '',
      args: [],
    );
  }

  /// `I scanned`
  String get i_scanned {
    return Intl.message(
      'I scanned',
      name: 'i_scanned',
      desc: '',
      args: [],
    );
  }

  /// `Scanned me`
  String get scanned_me {
    return Intl.message(
      'Scanned me',
      name: 'scanned_me',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// ` Scanner Badge`
  String get scanner_badge {
    return Intl.message(
      ' Scanner Badge',
      name: 'scanner_badge',
      desc: '',
      args: [],
    );
  }

  /// `Badge`
  String get badge {
    return Intl.message(
      'Badge',
      name: 'badge',
      desc: '',
      args: [],
    );
  }

  /// `Badge Scanner`
  String get badge_scanner {
    return Intl.message(
      'Badge Scanner',
      name: 'badge_scanner',
      desc: '',
      args: [],
    );
  }

  /// `Exhibitors`
  String get exhibitors {
    return Intl.message(
      'Exhibitors',
      name: 'exhibitors',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Diary`
  String get diary {
    return Intl.message(
      'Diary',
      name: 'diary',
      desc: '',
      args: [],
    );
  }

  /// `Optional`
  String get optional {
    return Intl.message(
      'Optional',
      name: 'optional',
      desc: '',
      args: [],
    );
  }

  /// `My Agenda`
  String get my_agenda {
    return Intl.message(
      'My Agenda',
      name: 'my_agenda',
      desc: '',
      args: [],
    );
  }

  /// `Meeting`
  String get meeting {
    return Intl.message(
      'Meeting',
      name: 'meeting',
      desc: '',
      args: [],
    );
  }

  /// `Download`
  String get download {
    return Intl.message(
      'Download',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `Upload`
  String get upload {
    return Intl.message(
      'Upload',
      name: 'upload',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Scan`
  String get scan {
    return Intl.message(
      'Scan',
      name: 'scan',
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

  /// `Reconnect`
  String get reconnect {
    return Intl.message(
      'Reconnect',
      name: 'reconnect',
      desc: '',
      args: [],
    );
  }

  /// `Connect`
  String get connect {
    return Intl.message(
      'Connect',
      name: 'connect',
      desc: '',
      args: [],
    );
  }

  /// `Join with Code`
  String get join_with_code {
    return Intl.message(
      'Join with Code',
      name: 'join_with_code',
      desc: '',
      args: [],
    );
  }

  /// `Enter password`
  String get enter_password {
    return Intl.message(
      'Enter password',
      name: 'enter_password',
      desc: '',
      args: [],
    );
  }

  /// `Please make sure you are connected to the Internet`
  String get internet_connect_field {
    return Intl.message(
      'Please make sure you are connected to the Internet',
      name: 'internet_connect_field',
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

  /// `Job Opportunity`
  String get job_opportunity {
    return Intl.message(
      'Job Opportunity',
      name: 'job_opportunity',
      desc: '',
      args: [],
    );
  }

  /// `Training`
  String get training {
    return Intl.message(
      'Training',
      name: 'training',
      desc: '',
      args: [],
    );
  }

  /// `Feed Back`
  String get feed_back {
    return Intl.message(
      'Feed Back',
      name: 'feed_back',
      desc: '',
      args: [],
    );
  }

  /// `Conferences`
  String get conferences {
    return Intl.message(
      'Conferences',
      name: 'conferences',
      desc: '',
      args: [],
    );
  }

  /// `Map`
  String get map {
    return Intl.message(
      'Map',
      name: 'map',
      desc: '',
      args: [],
    );
  }

  /// `Badge Preview`
  String get badgePreview {
    return Intl.message(
      'Badge Preview',
      name: 'badgePreview',
      desc: '',
      args: [],
    );
  }

  /// `Visitor`
  String get visitor {
    return Intl.message(
      'Visitor',
      name: 'visitor',
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

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Scan Result`
  String get scan_result {
    return Intl.message(
      'Scan Result',
      name: 'scan_result',
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

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Yesterday`
  String get yesterday {
    return Intl.message(
      'Yesterday',
      name: 'yesterday',
      desc: '',
      args: [],
    );
  }

  /// `am`
  String get am {
    return Intl.message(
      'am',
      name: 'am',
      desc: '',
      args: [],
    );
  }

  /// `pm`
  String get pm {
    return Intl.message(
      'pm',
      name: 'pm',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password`
  String get forget_password_app {
    return Intl.message(
      'Forget Password',
      name: 'forget_password_app',
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

  /// `Rate us`
  String get rateUs {
    return Intl.message(
      'Rate us',
      name: 'rateUs',
      desc: '',
      args: [],
    );
  }

  /// `App language`
  String get appLanguage {
    return Intl.message(
      'App language',
      name: 'appLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Delete account`
  String get removeAccount {
    return Intl.message(
      'Delete account',
      name: 'removeAccount',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to remove your account?`
  String get doYouWantToRemoveAccount {
    return Intl.message(
      'Do you want to remove your account?',
      name: 'doYouWantToRemoveAccount',
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

  /// `Read more`
  String get readMore {
    return Intl.message(
      'Read more',
      name: 'readMore',
      desc: '',
      args: [],
    );
  }

  /// `Show less`
  String get show_less {
    return Intl.message(
      'Show less',
      name: 'show_less',
      desc: '',
      args: [],
    );
  }

  /// `Read More`
  String get read_more {
    return Intl.message(
      'Read More',
      name: 'read_more',
      desc: '',
      args: [],
    );
  }

  /// `Your feedback`
  String get your_feedback {
    return Intl.message(
      'Your feedback',
      name: 'your_feedback',
      desc: '',
      args: [],
    );
  }

  /// `Rate`
  String get rate {
    return Intl.message(
      'Rate',
      name: 'rate',
      desc: '',
      args: [],
    );
  }

  /// `Rate us`
  String get rate_us {
    return Intl.message(
      'Rate us',
      name: 'rate_us',
      desc: '',
      args: [],
    );
  }

  /// `Give your rating`
  String get give_your_rating {
    return Intl.message(
      'Give your rating',
      name: 'give_your_rating',
      desc: '',
      args: [],
    );
  }

  /// `Type your comment`
  String get type_your_comment {
    return Intl.message(
      'Type your comment',
      name: 'type_your_comment',
      desc: '',
      args: [],
    );
  }

  /// `Write your comment`
  String get write_your_comment {
    return Intl.message(
      'Write your comment',
      name: 'write_your_comment',
      desc: '',
      args: [],
    );
  }

  /// `App language`
  String get app_language {
    return Intl.message(
      'App language',
      name: 'app_language',
      desc: '',
      args: [],
    );
  }

  /// `Remove account`
  String get remove_account {
    return Intl.message(
      'Remove account',
      name: 'remove_account',
      desc: '',
      args: [],
    );
  }

  /// `Overall Experience`
  String get overall_experience {
    return Intl.message(
      'Overall Experience',
      name: 'overall_experience',
      desc: '',
      args: [],
    );
  }

  /// `Ease of Use`
  String get ease_of_use {
    return Intl.message(
      'Ease of Use',
      name: 'ease_of_use',
      desc: '',
      args: [],
    );
  }

  /// `Event Organization`
  String get event_organization {
    return Intl.message(
      'Event Organization',
      name: 'event_organization',
      desc: '',
      args: [],
    );
  }

  /// `What did you like the most about this event?`
  String get question1 {
    return Intl.message(
      'What did you like the most about this event?',
      name: 'question1',
      desc: '',
      args: [],
    );
  }

  /// `What can we improve for future events?`
  String get question2 {
    return Intl.message(
      'What can we improve for future events?',
      name: 'question2',
      desc: '',
      args: [],
    );
  }

  /// `Is there anything else you would like to share about your experience?`
  String get question3 {
    return Intl.message(
      'Is there anything else you would like to share about your experience?',
      name: 'question3',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get verification {
    return Intl.message(
      'Verification',
      name: 'verification',
      desc: '',
      args: [],
    );
  }

  /// `Enter the code sent to the email`
  String get enter_the_code {
    return Intl.message(
      'Enter the code sent to the email',
      name: 'enter_the_code',
      desc: '',
      args: [],
    );
  }

  /// `Please enter an email address`
  String get enter_email_plz {
    return Intl.message(
      'Please enter an email address',
      name: 'enter_email_plz',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email address`
  String get invalid_email_address {
    return Intl.message(
      'Invalid email address',
      name: 'invalid_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Your password`
  String get please_enter_password {
    return Intl.message(
      'Please Enter Your password',
      name: 'please_enter_password',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get password_length {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'password_length',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get reset_password {
    return Intl.message(
      'Reset Password',
      name: 'reset_password',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get newpassword {
    return Intl.message(
      'New password',
      name: 'newpassword',
      desc: '',
      args: [],
    );
  }

  /// `Re-enter password`
  String get reenter_password {
    return Intl.message(
      'Re-enter password',
      name: 'reenter_password',
      desc: '',
      args: [],
    );
  }

  /// `Password must match`
  String get password_must_match {
    return Intl.message(
      'Password must match',
      name: 'password_must_match',
      desc: '',
      args: [],
    );
  }

  /// `We are excited to be part of your digital journey. Whether you are a startup looking for a cutting-edge website or an established business in need of digital transformation, HoloolTech is here to assist you. connect and explore how technology can propel your business to new heights.`
  String get about6_content {
    return Intl.message(
      'We are excited to be part of your digital journey. Whether you are a startup looking for a cutting-edge website or an established business in need of digital transformation, HoloolTech is here to assist you. connect and explore how technology can propel your business to new heights.',
      name: 'about6_content',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection. Please check your settings.`
  String get no_internet {
    return Intl.message(
      'No internet connection. Please check your settings.',
      name: 'no_internet',
      desc: '',
      args: [],
    );
  }

  /// `Login failed`
  String get login_faild {
    return Intl.message(
      'Login failed',
      name: 'login_faild',
      desc: '',
      args: [],
    );
  }

  /// `Please check your email and password.`
  String get login_faild_message {
    return Intl.message(
      'Please check your email and password.',
      name: 'login_faild_message',
      desc: '',
      args: [],
    );
  }

  /// `We are experiencing some technical issues on our end.\nPlease try again later.`
  String get server_error {
    return Intl.message(
      'We are experiencing some technical issues on our end.\nPlease try again later.',
      name: 'server_error',
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

  /// `Warning`
  String get warning {
    return Intl.message(
      'Warning',
      name: 'warning',
      desc: '',
      args: [],
    );
  }

  /// `Pin is incorrect`
  String get pin_is_incorrect {
    return Intl.message(
      'Pin is incorrect',
      name: 'pin_is_incorrect',
      desc: '',
      args: [],
    );
  }

  /// `FAQs`
  String get FAQs {
    return Intl.message(
      'FAQs',
      name: 'FAQs',
      desc: '',
      args: [],
    );
  }

  /// `Your session has expired due to inactivity.\nPlease log in again to continue.`
  String get session_expired {
    return Intl.message(
      'Your session has expired due to inactivity.\nPlease log in again to continue.',
      name: 'session_expired',
      desc: '',
      args: [],
    );
  }

  /// `We could not find an account with that email. Please check the address`
  String get dont_found_account {
    return Intl.message(
      'We could not find an account with that email. Please check the address',
      name: 'dont_found_account',
      desc: '',
      args: [],
    );
  }

  /// `You do not have new notifications yet`
  String get no_notifications {
    return Intl.message(
      'You do not have new notifications yet',
      name: 'no_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Promoter`
  String get promoter {
    return Intl.message(
      'Promoter',
      name: 'promoter',
      desc: '',
      args: [],
    );
  }

  /// `Mark all as read notifications`
  String get mark_notificatoin {
    return Intl.message(
      'Mark all as read notifications',
      name: 'mark_notificatoin',
      desc: '',
      args: [],
    );
  }

  /// `Organized Events`
  String get organized_events {
    return Intl.message(
      'Organized Events',
      name: 'organized_events',
      desc: '',
      args: [],
    );
  }

  /// `Website`
  String get website {
    return Intl.message(
      'Website',
      name: 'website',
      desc: '',
      args: [],
    );
  }

  /// `Additional Info`
  String get additional_info {
    return Intl.message(
      'Additional Info',
      name: 'additional_info',
      desc: '',
      args: [],
    );
  }

  /// `Book a meet`
  String get book_meet {
    return Intl.message(
      'Book a meet',
      name: 'book_meet',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get time {
    return Intl.message(
      'Time',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `Your Appointment`
  String get your_appointment {
    return Intl.message(
      'Your Appointment',
      name: 'your_appointment',
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

  /// `We have successfully received your appointment request,and we will notify you once your appointment has been confirmed`
  String get appointment_success {
    return Intl.message(
      'We have successfully received your appointment request,and we will notify you once your appointment has been confirmed',
      name: 'appointment_success',
      desc: '',
      args: [],
    );
  }

  /// `No data`
  String get no_data {
    return Intl.message(
      'No data',
      name: 'no_data',
      desc: '',
      args: [],
    );
  }

  /// `Server is down`
  String get server_down {
    return Intl.message(
      'Server is down',
      name: 'server_down',
      desc: '',
      args: [],
    );
  }

  /// `Failed to fetch conferences`
  String get conferences_error_message {
    return Intl.message(
      'Failed to fetch conferences',
      name: 'conferences_error_message',
      desc: '',
      args: [],
    );
  }

  /// `We have successfully received your job apply request,and we will notify you once your apply has been confirmed`
  String get job_success {
    return Intl.message(
      'We have successfully received your job apply request,and we will notify you once your apply has been confirmed',
      name: 'job_success',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
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

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Required Skills`
  String get skills {
    return Intl.message(
      'Required Skills',
      name: 'skills',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `Company`
  String get company {
    return Intl.message(
      'Company',
      name: 'company',
      desc: '',
      args: [],
    );
  }

  /// `Job Title`
  String get job_title {
    return Intl.message(
      'Job Title',
      name: 'job_title',
      desc: '',
      args: [],
    );
  }

  /// `Role`
  String get role {
    return Intl.message(
      'Role',
      name: 'role',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phone_number {
    return Intl.message(
      'Phone number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Birth of date`
  String get bod {
    return Intl.message(
      'Birth of date',
      name: 'bod',
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

  /// `Whatsapp`
  String get whatsapp_number {
    return Intl.message(
      'Whatsapp',
      name: 'whatsapp_number',
      desc: '',
      args: [],
    );
  }

  /// `Events work`
  String get events_work {
    return Intl.message(
      'Events work',
      name: 'events_work',
      desc: '',
      args: [],
    );
  }

  /// `Experience in hosting`
  String get experience_in_hosting {
    return Intl.message(
      'Experience in hosting',
      name: 'experience_in_hosting',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get year {
    return Intl.message(
      'Year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `Years`
  String get years {
    return Intl.message(
      'Years',
      name: 'years',
      desc: '',
      args: [],
    );
  }

  /// `Number of staff needed`
  String get number_of_staff_needed {
    return Intl.message(
      'Number of staff needed',
      name: 'number_of_staff_needed',
      desc: '',
      args: [],
    );
  }

  /// `Info`
  String get info {
    return Intl.message(
      'Info',
      name: 'info',
      desc: '',
      args: [],
    );
  }

  /// `No event now`
  String get no_event {
    return Intl.message(
      'No event now',
      name: 'no_event',
      desc: '',
      args: [],
    );
  }

  /// `Your courses`
  String get your_courses {
    return Intl.message(
      'Your courses',
      name: 'your_courses',
      desc: '',
      args: [],
    );
  }

  /// `h`
  String get h {
    return Intl.message(
      'h',
      name: 'h',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get conti {
    return Intl.message(
      'Continue',
      name: 'conti',
      desc: '',
      args: [],
    );
  }

  /// `Provide by`
  String get provided_by {
    return Intl.message(
      'Provide by',
      name: 'provided_by',
      desc: '',
      args: [],
    );
  }

  /// `You already applied to this course`
  String get you_already_applied {
    return Intl.message(
      'You already applied to this course',
      name: 'you_already_applied',
      desc: '',
      args: [],
    );
  }

  /// `Let others scan your QR to connect with you instantly!`
  String get let_other_scan {
    return Intl.message(
      'Let others scan your QR to connect with you instantly!',
      name: 'let_other_scan',
      desc: '',
      args: [],
    );
  }

  /// `Can not find your QR`
  String get qr_notfound {
    return Intl.message(
      'Can not find your QR',
      name: 'qr_notfound',
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

  /// `Search field is empty`
  String get field_empty {
    return Intl.message(
      'Search field is empty',
      name: 'field_empty',
      desc: '',
      args: [],
    );
  }

  /// `You already have the data`
  String get already_have_data {
    return Intl.message(
      'You already have the data',
      name: 'already_have_data',
      desc: '',
      args: [],
    );
  }

  /// `Scan cancelled`
  String get scan_cancelled {
    return Intl.message(
      'Scan cancelled',
      name: 'scan_cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Scan failed`
  String get scan_failed {
    return Intl.message(
      'Scan failed',
      name: 'scan_failed',
      desc: '',
      args: [],
    );
  }

  /// `You can not scan yourself`
  String get you_can_not_scan_yourself {
    return Intl.message(
      'You can not scan yourself',
      name: 'you_can_not_scan_yourself',
      desc: '',
      args: [],
    );
  }

  /// `You already scanned this contact`
  String get you_already_scanned_this_contact {
    return Intl.message(
      'You already scanned this contact',
      name: 'you_already_scanned_this_contact',
      desc: '',
      args: [],
    );
  }

  /// `Success scan you will find the new contact in your lead`
  String get success_scan_you_will_find_the_new_contact_in_your_lead {
    return Intl.message(
      'Success scan you will find the new contact in your lead',
      name: 'success_scan_you_will_find_the_new_contact_in_your_lead',
      desc: '',
      args: [],
    );
  }

  /// `End time`
  String get end_time {
    return Intl.message(
      'End time',
      name: 'end_time',
      desc: '',
      args: [],
    );
  }

  /// `Start time`
  String get start_time {
    return Intl.message(
      'Start time',
      name: 'start_time',
      desc: '',
      args: [],
    );
  }

  /// `Information about the conference`
  String get info_conference {
    return Intl.message(
      'Information about the conference',
      name: 'info_conference',
      desc: '',
      args: [],
    );
  }

  /// `Seats`
  String get seats {
    return Intl.message(
      'Seats',
      name: 'seats',
      desc: '',
      args: [],
    );
  }

  /// `Lecturer`
  String get lecturer {
    return Intl.message(
      'Lecturer',
      name: 'lecturer',
      desc: '',
      args: [],
    );
  }

  /// `Download contact`
  String get download_contact {
    return Intl.message(
      'Download contact',
      name: 'download_contact',
      desc: '',
      args: [],
    );
  }

  /// `You already have a pending request`
  String get you_already_have_a_pending_request {
    return Intl.message(
      'You already have a pending request',
      name: 'you_already_have_a_pending_request',
      desc: '',
      args: [],
    );
  }

  /// `Your request is being processed`
  String get your_request_is_being_processed {
    return Intl.message(
      'Your request is being processed',
      name: 'your_request_is_being_processed',
      desc: '',
      args: [],
    );
  }

  /// `Some of your answers are wrong please check again before submit`
  String get some_ofyouranswers_worng {
    return Intl.message(
      'Some of your answers are wrong please check again before submit',
      name: 'some_ofyouranswers_worng',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations all your answers are correct`
  String get congratulations {
    return Intl.message(
      'Congratulations all your answers are correct',
      name: 'congratulations',
      desc: '',
      args: [],
    );
  }

  /// `Please answer all the questions`
  String get please_answer_all {
    return Intl.message(
      'Please answer all the questions',
      name: 'please_answer_all',
      desc: '',
      args: [],
    );
  }

  /// `You have successfully registered for the course. You can find it in your courses`
  String get you_registered_course {
    return Intl.message(
      'You have successfully registered for the course. You can find it in your courses',
      name: 'you_registered_course',
      desc: '',
      args: [],
    );
  }

  /// `You already done this level`
  String get you_already_answered {
    return Intl.message(
      'You already done this level',
      name: 'you_already_answered',
      desc: '',
      args: [],
    );
  }

  /// `You are not at any event now`
  String get you_are_not_at_any_event_now {
    return Intl.message(
      'You are not at any event now',
      name: 'you_are_not_at_any_event_now',
      desc: '',
      args: [],
    );
  }

  /// `Skills`
  String get normal_skills {
    return Intl.message(
      'Skills',
      name: 'normal_skills',
      desc: '',
      args: [],
    );
  }

  /// `Skill`
  String get skill {
    return Intl.message(
      'Skill',
      name: 'skill',
      desc: '',
      args: [],
    );
  }

  /// `Nationality`
  String get nationality {
    return Intl.message(
      'Nationality',
      name: 'nationality',
      desc: '',
      args: [],
    );
  }

  /// `Height`
  String get height {
    return Intl.message(
      'Height',
      name: 'height',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get weight {
    return Intl.message(
      'Weight',
      name: 'weight',
      desc: '',
      args: [],
    );
  }

  /// `Events feedback`
  String get events_feedback {
    return Intl.message(
      'Events feedback',
      name: 'events_feedback',
      desc: '',
      args: [],
    );
  }

  /// `You did not reach to this level yet`
  String get you_didnt_reach {
    return Intl.message(
      'You did not reach to this level yet',
      name: 'you_didnt_reach',
      desc: '',
      args: [],
    );
  }

  /// `Requests`
  String get requests {
    return Intl.message(
      'Requests',
      name: 'requests',
      desc: '',
      args: [],
    );
  }

  /// `Source of Digital Solutions`
  String get source_of_digital {
    return Intl.message(
      'Source of Digital Solutions',
      name: 'source_of_digital',
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

  /// `contact us`
  String get contact_us {
    return Intl.message(
      'contact us',
      name: 'contact_us',
      desc: '',
      args: [],
    );
  }

  /// `Registered user name/ Business name`
  String get registered_user_name {
    return Intl.message(
      'Registered user name/ Business name',
      name: 'registered_user_name',
      desc: '',
      args: [],
    );
  }

  /// `Forgot username/ business name ?`
  String get forgot_username_business_name {
    return Intl.message(
      'Forgot username/ business name ?',
      name: 'forgot_username_business_name',
      desc: '',
      args: [],
    );
  }

  /// `Select which contact details should we use to reset your password`
  String get select_which_contact_details_should_we_use {
    return Intl.message(
      'Select which contact details should we use to reset your password',
      name: 'select_which_contact_details_should_we_use',
      desc: '',
      args: [],
    );
  }

  /// `Enter 4-digit recovery code`
  String get enter_code_digit {
    return Intl.message(
      'Enter 4-digit recovery code',
      name: 'enter_code_digit',
      desc: '',
      args: [],
    );
  }

  /// `The recovery code was sent to your mobile number. Please enter the code`
  String get send_code_success_phone {
    return Intl.message(
      'The recovery code was sent to your mobile number. Please enter the code',
      name: 'send_code_success_phone',
      desc: '',
      args: [],
    );
  }

  /// `The recovery code was sent to Email. Please enter the code`
  String get send_code_success_email {
    return Intl.message(
      'The recovery code was sent to Email. Please enter the code',
      name: 'send_code_success_email',
      desc: '',
      args: [],
    );
  }

  /// `Not Received`
  String get not_received {
    return Intl.message(
      'Not Received',
      name: 'not_received',
      desc: '',
      args: [],
    );
  }

  /// `Resend OTP`
  String get resend_OTP {
    return Intl.message(
      'Resend OTP',
      name: 'resend_OTP',
      desc: '',
      args: [],
    );
  }

  /// `Password reset successful`
  String get password_reset_successful {
    return Intl.message(
      'Password reset successful',
      name: 'password_reset_successful',
      desc: '',
      args: [],
    );
  }

  /// `You have successfully reset your password. Please use your new password when logging in.`
  String get password_message_success {
    return Intl.message(
      'You have successfully reset your password. Please use your new password when logging in.',
      name: 'password_message_success',
      desc: '',
      args: [],
    );
  }

  /// `VERIFY`
  String get verify {
    return Intl.message(
      'VERIFY',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `via SMS`
  String get via_SMS {
    return Intl.message(
      'via SMS',
      name: 'via_SMS',
      desc: '',
      args: [],
    );
  }

  /// `via E-mail`
  String get via_email {
    return Intl.message(
      'via E-mail',
      name: 'via_email',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Shop`
  String get shop {
    return Intl.message(
      'Shop',
      name: 'shop',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile_nav {
    return Intl.message(
      'Profile',
      name: 'profile_nav',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your location`
  String get please_enter_location {
    return Intl.message(
      'Please enter your location',
      name: 'please_enter_location',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get please_enter_phone {
    return Intl.message(
      'Please enter your phone number',
      name: 'please_enter_phone',
      desc: '',
      args: [],
    );
  }

  /// `Request Maintenance`
  String get request_maintenance {
    return Intl.message(
      'Request Maintenance',
      name: 'request_maintenance',
      desc: '',
      args: [],
    );
  }

  /// `Selected Video`
  String get selected_video {
    return Intl.message(
      'Selected Video',
      name: 'selected_video',
      desc: '',
      args: [],
    );
  }

  /// `Selected Image`
  String get selected_image {
    return Intl.message(
      'Selected Image',
      name: 'selected_image',
      desc: '',
      args: [],
    );
  }

  /// `Upload the Files here`
  String get upload_the_files_here {
    return Intl.message(
      'Upload the Files here',
      name: 'upload_the_files_here',
      desc: '',
      args: [],
    );
  }

  /// `Change language`
  String get change_language {
    return Intl.message(
      'Change language',
      name: 'change_language',
      desc: '',
      args: [],
    );
  }

  /// `Select currencies to use`
  String get select_currencies_to_use {
    return Intl.message(
      'Select currencies to use',
      name: 'select_currencies_to_use',
      desc: '',
      args: [],
    );
  }

  /// `Change currency`
  String get change_currency {
    return Intl.message(
      'Change currency',
      name: 'change_currency',
      desc: '',
      args: [],
    );
  }

  /// `Store`
  String get store {
    return Intl.message(
      'Store',
      name: 'store',
      desc: '',
      args: [],
    );
  }

  /// `Common`
  String get common {
    return Intl.message(
      'Common',
      name: 'common',
      desc: '',
      args: [],
    );
  }

  /// `Products you have`
  String get products_you_have {
    return Intl.message(
      'Products you have',
      name: 'products_you_have',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get see_all {
    return Intl.message(
      'See All',
      name: 'see_all',
      desc: '',
      args: [],
    );
  }

  /// `Special For You`
  String get special_for_you {
    return Intl.message(
      'Special For You',
      name: 'special_for_you',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Brand`
  String get brand {
    return Intl.message(
      'Brand',
      name: 'brand',
      desc: '',
      args: [],
    );
  }

  /// `Model number`
  String get model_number {
    return Intl.message(
      'Model number',
      name: 'model_number',
      desc: '',
      args: [],
    );
  }

  /// `Serial no`
  String get serial_no {
    return Intl.message(
      'Serial no',
      name: 'serial_no',
      desc: '',
      args: [],
    );
  }

  /// `Add to Cart`
  String get add_to_cart {
    return Intl.message(
      'Add to Cart',
      name: 'add_to_cart',
      desc: '',
      args: [],
    );
  }

  /// `Profile information`
  String get profile_information {
    return Intl.message(
      'Profile information',
      name: 'profile_information',
      desc: '',
      args: [],
    );
  }

  /// `Show all order`
  String get show_all_order {
    return Intl.message(
      'Show all order',
      name: 'show_all_order',
      desc: '',
      args: [],
    );
  }

  /// `QAR`
  String get qar {
    return Intl.message(
      'QAR',
      name: 'qar',
      desc: '',
      args: [],
    );
  }

  /// `SAR`
  String get sar {
    return Intl.message(
      'SAR',
      name: 'sar',
      desc: '',
      args: [],
    );
  }

  /// `General Data`
  String get general_data {
    return Intl.message(
      'General Data',
      name: 'general_data',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Description & Maintenance`
  String get description_maintenance {
    return Intl.message(
      'Description & Maintenance',
      name: 'description_maintenance',
      desc: '',
      args: [],
    );
  }

  /// `Purchased date`
  String get purchased_date {
    return Intl.message(
      'Purchased date',
      name: 'purchased_date',
      desc: '',
      args: [],
    );
  }

  /// `Installation date`
  String get installation_date {
    return Intl.message(
      'Installation date',
      name: 'installation_date',
      desc: '',
      args: [],
    );
  }

  /// `Technician man`
  String get technical_man {
    return Intl.message(
      'Technician man',
      name: 'technical_man',
      desc: '',
      args: [],
    );
  }

  /// `N/A`
  String get n_a {
    return Intl.message(
      'N/A',
      name: 'n_a',
      desc: '',
      args: [],
    );
  }

  /// `Order data`
  String get order_data {
    return Intl.message(
      'Order data',
      name: 'order_data',
      desc: '',
      args: [],
    );
  }

  /// `Ordered at`
  String get ordered_at {
    return Intl.message(
      'Ordered at',
      name: 'ordered_at',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get order {
    return Intl.message(
      'Order',
      name: 'order',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Status`
  String get delivery_statuse {
    return Intl.message(
      'Delivery Status',
      name: 'delivery_statuse',
      desc: '',
      args: [],
    );
  }

  /// `Payment Status`
  String get payment_statuse {
    return Intl.message(
      'Payment Status',
      name: 'payment_statuse',
      desc: '',
      args: [],
    );
  }

  /// `Created at`
  String get created_at {
    return Intl.message(
      'Created at',
      name: 'created_at',
      desc: '',
      args: [],
    );
  }

  /// `You have to order one item at least`
  String get you_have_order_one_item {
    return Intl.message(
      'You have to order one item at least',
      name: 'you_have_order_one_item',
      desc: '',
      args: [],
    );
  }

  /// `Your cart`
  String get your_cart {
    return Intl.message(
      'Your cart',
      name: 'your_cart',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `Items`
  String get items {
    return Intl.message(
      'Items',
      name: 'items',
      desc: '',
      args: [],
    );
  }

  /// `Add new address`
  String get add_new_address {
    return Intl.message(
      'Add new address',
      name: 'add_new_address',
      desc: '',
      args: [],
    );
  }

  /// `Payment Summary`
  String get payment_summary {
    return Intl.message(
      'Payment Summary',
      name: 'payment_summary',
      desc: '',
      args: [],
    );
  }

  /// `Products price`
  String get products_price {
    return Intl.message(
      'Products price',
      name: 'products_price',
      desc: '',
      args: [],
    );
  }

  /// `Shipping cost`
  String get shipping_coast {
    return Intl.message(
      'Shipping cost',
      name: 'shipping_coast',
      desc: '',
      args: [],
    );
  }

  /// `Total Payment`
  String get total_payment {
    return Intl.message(
      'Total Payment',
      name: 'total_payment',
      desc: '',
      args: [],
    );
  }

  /// `Credit/Debit`
  String get credit_debit {
    return Intl.message(
      'Credit/Debit',
      name: 'credit_debit',
      desc: '',
      args: [],
    );
  }

  /// `Cash on delivery`
  String get cash_on_delivery {
    return Intl.message(
      'Cash on delivery',
      name: 'cash_on_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Address Info`
  String get address_info {
    return Intl.message(
      'Address Info',
      name: 'address_info',
      desc: '',
      args: [],
    );
  }

  /// `Add Address`
  String get add_address {
    return Intl.message(
      'Add Address',
      name: 'add_address',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Your Country`
  String get your_country {
    return Intl.message(
      'Your Country',
      name: 'your_country',
      desc: '',
      args: [],
    );
  }

  /// `Your City`
  String get your_city {
    return Intl.message(
      'Your City',
      name: 'your_city',
      desc: '',
      args: [],
    );
  }

  /// `Please select your city`
  String get please_select_your_city {
    return Intl.message(
      'Please select your city',
      name: 'please_select_your_city',
      desc: '',
      args: [],
    );
  }

  /// `You have to select country first`
  String get you_have_select_country_first {
    return Intl.message(
      'You have to select country first',
      name: 'you_have_select_country_first',
      desc: '',
      args: [],
    );
  }

  /// `Create address`
  String get create_address {
    return Intl.message(
      'Create address',
      name: 'create_address',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `Please press refresh button`
  String get please_press_refresh_button {
    return Intl.message(
      'Please press refresh button',
      name: 'please_press_refresh_button',
      desc: '',
      args: [],
    );
  }

  /// `You region`
  String get your_region {
    return Intl.message(
      'You region',
      name: 'your_region',
      desc: '',
      args: [],
    );
  }

  /// `Select your region`
  String get select_your_region {
    return Intl.message(
      'Select your region',
      name: 'select_your_region',
      desc: '',
      args: [],
    );
  }

  /// `Show all request`
  String get show_all_request {
    return Intl.message(
      'Show all request',
      name: 'show_all_request',
      desc: '',
      args: [],
    );
  }

  /// `You can see all your maintenance request`
  String get you_can_see_all_your_maintenance_request {
    return Intl.message(
      'You can see all your maintenance request',
      name: 'you_can_see_all_your_maintenance_request',
      desc: '',
      args: [],
    );
  }

  /// `Edit Image`
  String get edit_image {
    return Intl.message(
      'Edit Image',
      name: 'edit_image',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Select image`
  String get select_image {
    return Intl.message(
      'Select image',
      name: 'select_image',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get first_name {
    return Intl.message(
      'First name',
      name: 'first_name',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get last_name {
    return Intl.message(
      'Last name',
      name: 'last_name',
      desc: '',
      args: [],
    );
  }

  /// `Country code`
  String get country_code {
    return Intl.message(
      'Country code',
      name: 'country_code',
      desc: '',
      args: [],
    );
  }

  /// `Type Description here`
  String get type_description_here {
    return Intl.message(
      'Type Description here',
      name: 'type_description_here',
      desc: '',
      args: [],
    );
  }

  /// `Enter your description here`
  String get enter_your_description_here {
    return Intl.message(
      'Enter your description here',
      name: 'enter_your_description_here',
      desc: '',
      args: [],
    );
  }

  /// `Select machine`
  String get select_machine {
    return Intl.message(
      'Select machine',
      name: 'select_machine',
      desc: '',
      args: [],
    );
  }

  /// `Tasks`
  String get tasks {
    return Intl.message(
      'Tasks',
      name: 'tasks',
      desc: '',
      args: [],
    );
  }

  /// `Performance`
  String get performance {
    return Intl.message(
      'Performance',
      name: 'performance',
      desc: '',
      args: [],
    );
  }

  /// `Contact list`
  String get contact_list {
    return Intl.message(
      'Contact list',
      name: 'contact_list',
      desc: '',
      args: [],
    );
  }

  /// `Contacts`
  String get contacts {
    return Intl.message(
      'Contacts',
      name: 'contacts',
      desc: '',
      args: [],
    );
  }

  /// `Add Contact`
  String get add_contact {
    return Intl.message(
      'Add Contact',
      name: 'add_contact',
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

  /// `Clear all`
  String get clear_all {
    return Intl.message(
      'Clear all',
      name: 'clear_all',
      desc: '',
      args: [],
    );
  }

  /// `Total item`
  String get total_item {
    return Intl.message(
      'Total item',
      name: 'total_item',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get wallet {
    return Intl.message(
      'Wallet',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `Payment Summery`
  String get payment_summery {
    return Intl.message(
      'Payment Summery',
      name: 'payment_summery',
      desc: '',
      args: [],
    );
  }

  /// `Available Sizes`
  String get available_sizes {
    return Intl.message(
      'Available Sizes',
      name: 'available_sizes',
      desc: '',
      args: [],
    );
  }

  /// `Available Colors`
  String get available_colors {
    return Intl.message(
      'Available Colors',
      name: 'available_colors',
      desc: '',
      args: [],
    );
  }

  /// `Size unavailable`
  String get size_unavailable {
    return Intl.message(
      'Size unavailable',
      name: 'size_unavailable',
      desc: '',
      args: [],
    );
  }

  /// `Colors`
  String get colors {
    return Intl.message(
      'Colors',
      name: 'colors',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Clear Wishlist`
  String get clear_wishlist {
    return Intl.message(
      'Clear Wishlist',
      name: 'clear_wishlist',
      desc: '',
      args: [],
    );
  }

  /// `Wishlist`
  String get wishlist {
    return Intl.message(
      'Wishlist',
      name: 'wishlist',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove {
    return Intl.message(
      'Remove',
      name: 'remove',
      desc: '',
      args: [],
    );
  }

  /// `Help Center`
  String get help_center {
    return Intl.message(
      'Help Center',
      name: 'help_center',
      desc: '',
      args: [],
    );
  }

  /// `Privacy and policy`
  String get privacy_and_policy {
    return Intl.message(
      'Privacy and policy',
      name: 'privacy_and_policy',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Wallet amount`
  String get wallet_amount {
    return Intl.message(
      'Wallet amount',
      name: 'wallet_amount',
      desc: '',
      args: [],
    );
  }

  /// `Points amount`
  String get points_amount {
    return Intl.message(
      'Points amount',
      name: 'points_amount',
      desc: '',
      args: [],
    );
  }

  /// `Addresses`
  String get my_address {
    return Intl.message(
      'Addresses',
      name: 'my_address',
      desc: '',
      args: [],
    );
  }

  /// `My Order`
  String get my_order {
    return Intl.message(
      'My Order',
      name: 'my_order',
      desc: '',
      args: [],
    );
  }

  /// `Unknown City`
  String get unknown_city {
    return Intl.message(
      'Unknown City',
      name: 'unknown_city',
      desc: '',
      args: [],
    );
  }

  /// `Unknown Country`
  String get unknown_country {
    return Intl.message(
      'Unknown Country',
      name: 'unknown_country',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load addresses`
  String get failed_to_load_addresses {
    return Intl.message(
      'Failed to load addresses',
      name: 'failed_to_load_addresses',
      desc: '',
      args: [],
    );
  }

  /// `You don’t have any addresses saved yet.\nAdd one now to make your checkout process smoother!`
  String get address_message {
    return Intl.message(
      'You don’t have any addresses saved yet.\nAdd one now to make your checkout process smoother!',
      name: 'address_message',
      desc: '',
      args: [],
    );
  }

  /// `Select Country and City`
  String get select_country_and_city {
    return Intl.message(
      'Select Country and City',
      name: 'select_country_and_city',
      desc: '',
      args: [],
    );
  }

  /// `Please select a city`
  String get please_select_a_city {
    return Intl.message(
      'Please select a city',
      name: 'please_select_a_city',
      desc: '',
      args: [],
    );
  }

  /// `No Country Available`
  String get no_country_available {
    return Intl.message(
      'No Country Available',
      name: 'no_country_available',
      desc: '',
      args: [],
    );
  }

  /// `No City Available`
  String get no_city_available {
    return Intl.message(
      'No City Available',
      name: 'no_city_available',
      desc: '',
      args: [],
    );
  }

  /// `Select Country`
  String get select_country {
    return Intl.message(
      'Select Country',
      name: 'select_country',
      desc: '',
      args: [],
    );
  }

  /// `Select City`
  String get select_city {
    return Intl.message(
      'Select City',
      name: 'select_city',
      desc: '',
      args: [],
    );
  }

  /// `Select Address`
  String get select_address {
    return Intl.message(
      'Select Address',
      name: 'select_address',
      desc: '',
      args: [],
    );
  }

  /// `Search Country`
  String get search_country {
    return Intl.message(
      'Search Country',
      name: 'search_country',
      desc: '',
      args: [],
    );
  }

  /// `Search City`
  String get search_city {
    return Intl.message(
      'Search City',
      name: 'search_city',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load Country`
  String get failed_to_load_country {
    return Intl.message(
      'Failed to load Country',
      name: 'failed_to_load_country',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load City`
  String get failed_to_load_City {
    return Intl.message(
      'Failed to load City',
      name: 'failed_to_load_City',
      desc: '',
      args: [],
    );
  }

  /// `Please select your country`
  String get please_select_your_country {
    return Intl.message(
      'Please select your country',
      name: 'please_select_your_country',
      desc: '',
      args: [],
    );
  }

  /// `No Country selected \n please select a Country first`
  String get info_dialog_address {
    return Intl.message(
      'No Country selected \n please select a Country first',
      name: 'info_dialog_address',
      desc: '',
      args: [],
    );
  }

  /// `Your wallet is empty`
  String get your_wallet_is_empty {
    return Intl.message(
      'Your wallet is empty',
      name: 'your_wallet_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `All Products`
  String get all_products {
    return Intl.message(
      'All Products',
      name: 'all_products',
      desc: '',
      args: [],
    );
  }

  /// `All Packages`
  String get all_packages {
    return Intl.message(
      'All Packages',
      name: 'all_packages',
      desc: '',
      args: [],
    );
  }

  /// `Please wait while the data loads from the server.`
  String get please_wait_while_the_data_loads_from_the_server {
    return Intl.message(
      'Please wait while the data loads from the server.',
      name: 'please_wait_while_the_data_loads_from_the_server',
      desc: '',
      args: [],
    );
  }

  /// `Verify Checkout`
  String get verify_checkout {
    return Intl.message(
      'Verify Checkout',
      name: 'verify_checkout',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get payment_method {
    return Intl.message(
      'Payment Method',
      name: 'payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Address details`
  String get address_details {
    return Intl.message(
      'Address details',
      name: 'address_details',
      desc: '',
      args: [],
    );
  }

  /// `Address created successfully`
  String get address_created_successfully {
    return Intl.message(
      'Address created successfully',
      name: 'address_created_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Failed to create address`
  String get failed_to_create_address {
    return Intl.message(
      'Failed to create address',
      name: 'failed_to_create_address',
      desc: '',
      args: [],
    );
  }

  /// `Enter Address`
  String get enter_address {
    return Intl.message(
      'Enter Address',
      name: 'enter_address',
      desc: '',
      args: [],
    );
  }

  /// `Enter Street`
  String get enter_street {
    return Intl.message(
      'Enter Street',
      name: 'enter_street',
      desc: '',
      args: [],
    );
  }

  /// `Postal code`
  String get postal_code {
    return Intl.message(
      'Postal code',
      name: 'postal_code',
      desc: '',
      args: [],
    );
  }

  /// `Flat`
  String get flat {
    return Intl.message(
      'Flat',
      name: 'flat',
      desc: '',
      args: [],
    );
  }

  /// `Villa`
  String get villa {
    return Intl.message(
      'Villa',
      name: 'villa',
      desc: '',
      args: [],
    );
  }

  /// `Flat Number`
  String get flat_number {
    return Intl.message(
      'Flat Number',
      name: 'flat_number',
      desc: '',
      args: [],
    );
  }

  /// `Villa Number`
  String get villa_number {
    return Intl.message(
      'Villa Number',
      name: 'villa_number',
      desc: '',
      args: [],
    );
  }

  /// `Please fill all required fields`
  String get please_fill_all_required_fields {
    return Intl.message(
      'Please fill all required fields',
      name: 'please_fill_all_required_fields',
      desc: '',
      args: [],
    );
  }

  /// `Done Successfully please check your cart`
  String get done_successfully_check_your_cart {
    return Intl.message(
      'Done Successfully please check your cart',
      name: 'done_successfully_check_your_cart',
      desc: '',
      args: [],
    );
  }

  /// `You will get`
  String get you_will_get {
    return Intl.message(
      'You will get',
      name: 'you_will_get',
      desc: '',
      args: [],
    );
  }

  /// `points if you buy this product`
  String get points_if_you_buy_this_product {
    return Intl.message(
      'points if you buy this product',
      name: 'points_if_you_buy_this_product',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message(
      'Sign Up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Or Sign in with`
  String get or_sign_in_with {
    return Intl.message(
      'Or Sign in with',
      name: 'or_sign_in_with',
      desc: '',
      args: [],
    );
  }

  /// `Enter the password again`
  String get enter_the_password_again {
    return Intl.message(
      'Enter the password again',
      name: 'enter_the_password_again',
      desc: '',
      args: [],
    );
  }

  /// `We will verify your account`
  String get we_will_verify_your_account {
    return Intl.message(
      'We will verify your account',
      name: 'we_will_verify_your_account',
      desc: '',
      args: [],
    );
  }

  /// `Are you ready?`
  String get are_you_ready {
    return Intl.message(
      'Are you ready?',
      name: 'are_you_ready',
      desc: '',
      args: [],
    );
  }

  /// `Verify Account`
  String get verify_account {
    return Intl.message(
      'Verify Account',
      name: 'verify_account',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the password again`
  String get please_enter_the_password_again {
    return Intl.message(
      'Please enter the password again',
      name: 'please_enter_the_password_again',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for confirming your account`
  String get thank_you_for_confirming_your_account {
    return Intl.message(
      'Thank you for confirming your account',
      name: 'thank_you_for_confirming_your_account',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get verify_code {
    return Intl.message(
      'Verify Code',
      name: 'verify_code',
      desc: '',
      args: [],
    );
  }

  /// `We have sent a verification code to your email. Please enter the code to confirm your account`
  String get otp_send_email {
    return Intl.message(
      'We have sent a verification code to your email. Please enter the code to confirm your account',
      name: 'otp_send_email',
      desc: '',
      args: [],
    );
  }

  /// `We have sent a verification code to your email. Please enter the code to confirm your order`
  String get otp_send_confirm_order {
    return Intl.message(
      'We have sent a verification code to your email. Please enter the code to confirm your order',
      name: 'otp_send_confirm_order',
      desc: '',
      args: [],
    );
  }

  /// `I didn't receive the message`
  String get do_not_receive_the_message {
    return Intl.message(
      'I didn\'t receive the message',
      name: 'do_not_receive_the_message',
      desc: '',
      args: [],
    );
  }

  /// `Your email is`
  String get your_email_is {
    return Intl.message(
      'Your email is',
      name: 'your_email_is',
      desc: '',
      args: [],
    );
  }

  /// `Your sent code to this email`
  String get your_sent_code_to_this_email {
    return Intl.message(
      'Your sent code to this email',
      name: 'your_sent_code_to_this_email',
      desc: '',
      args: [],
    );
  }

  /// `Set Profile Details`
  String get set_profile_details {
    return Intl.message(
      'Set Profile Details',
      name: 'set_profile_details',
      desc: '',
      args: [],
    );
  }

  /// `Set WholeSale Details`
  String get set_wholesale_details {
    return Intl.message(
      'Set WholeSale Details',
      name: 'set_wholesale_details',
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

  /// `Finish`
  String get finish {
    return Intl.message(
      'Finish',
      name: 'finish',
      desc: '',
      args: [],
    );
  }

  /// `Subscribe to News`
  String get subscribe_to_news {
    return Intl.message(
      'Subscribe to News',
      name: 'subscribe_to_news',
      desc: '',
      args: [],
    );
  }

  /// `View our latest products and latest news`
  String get view_our_latest_products_and_latest_news {
    return Intl.message(
      'View our latest products and latest news',
      name: 'view_our_latest_products_and_latest_news',
      desc: '',
      args: [],
    );
  }

  /// `Upload Profile Picture`
  String get upload_profile_picture {
    return Intl.message(
      'Upload Profile Picture',
      name: 'upload_profile_picture',
      desc: '',
      args: [],
    );
  }

  /// `No image was selected.`
  String get no_image_was_selected {
    return Intl.message(
      'No image was selected.',
      name: 'no_image_was_selected',
      desc: '',
      args: [],
    );
  }

  /// `Select Profile Picture`
  String get select_profile_picture {
    return Intl.message(
      'Select Profile Picture',
      name: 'select_profile_picture',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email so you can continue resetting your password`
  String
      get please_enter_your_email_so_you_can_continue_resetting_your_password {
    return Intl.message(
      'Please enter your email so you can continue resetting your password',
      name:
          'please_enter_your_email_so_you_can_continue_resetting_your_password',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account ?`
  String get dont_have_an_account {
    return Intl.message(
      'Don\'t have an account ?',
      name: 'dont_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Choose one Gift`
  String get choose_one_gift {
    return Intl.message(
      'Choose one Gift',
      name: 'choose_one_gift',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get select {
    return Intl.message(
      'Select',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Select your gift`
  String get select_your_gift {
    return Intl.message(
      'Select your gift',
      name: 'select_your_gift',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get quantity {
    return Intl.message(
      'Quantity',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get order_details {
    return Intl.message(
      'Order Details',
      name: 'order_details',
      desc: '',
      args: [],
    );
  }

  /// `Your cart is currently empty.\nBrowse our products and add your favorites to get started!`
  String get cart_message {
    return Intl.message(
      'Your cart is currently empty.\nBrowse our products and add your favorites to get started!',
      name: 'cart_message',
      desc: '',
      args: [],
    );
  }

  /// `Looks like your wish list is empty.\nTime to fill it up with some fabulous finds`
  String get favorite_screen {
    return Intl.message(
      'Looks like your wish list is empty.\nTime to fill it up with some fabulous finds',
      name: 'favorite_screen',
      desc: '',
      args: [],
    );
  }

  /// `Delete all wishlist items`
  String get delete_all_wishlist_items {
    return Intl.message(
      'Delete all wishlist items',
      name: 'delete_all_wishlist_items',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load favorites`
  String get failed_to_load_favorites {
    return Intl.message(
      'Failed to load favorites',
      name: 'failed_to_load_favorites',
      desc: '',
      args: [],
    );
  }

  /// `Popular Categories`
  String get popular_categories {
    return Intl.message(
      'Popular Categories',
      name: 'popular_categories',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get notes {
    return Intl.message(
      'Notes',
      name: 'notes',
      desc: '',
      args: [],
    );
  }

  /// `Tax amount`
  String get tax_coast {
    return Intl.message(
      'Tax amount',
      name: 'tax_coast',
      desc: '',
      args: [],
    );
  }

  /// `Coupon`
  String get coupon {
    return Intl.message(
      'Coupon',
      name: 'coupon',
      desc: '',
      args: [],
    );
  }

  /// `Add Coupon`
  String get add_coupon {
    return Intl.message(
      'Add Coupon',
      name: 'add_coupon',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Coupon`
  String get cancel_coupon {
    return Intl.message(
      'Cancel Coupon',
      name: 'cancel_coupon',
      desc: '',
      args: [],
    );
  }

  /// `Color`
  String get color {
    return Intl.message(
      'Color',
      name: 'color',
      desc: '',
      args: [],
    );
  }

  /// `Size`
  String get size {
    return Intl.message(
      'Size',
      name: 'size',
      desc: '',
      args: [],
    );
  }

  /// `Only`
  String get only {
    return Intl.message(
      'Only',
      name: 'only',
      desc: '',
      args: [],
    );
  }

  /// `left in stock, order now.`
  String get left_in_stock_order_now {
    return Intl.message(
      'left in stock, order now.',
      name: 'left_in_stock_order_now',
      desc: '',
      args: [],
    );
  }

  /// `Please check your email or password.`
  String get please_check_your_email_or_password {
    return Intl.message(
      'Please check your email or password.',
      name: 'please_check_your_email_or_password',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to delete this address?`
  String get do_you_want_to_delete_this_address {
    return Intl.message(
      'Do you want to delete this address?',
      name: 'do_you_want_to_delete_this_address',
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

  /// `Delete Address`
  String get delete_address {
    return Intl.message(
      'Delete Address',
      name: 'delete_address',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get full_name {
    return Intl.message(
      'Full Name',
      name: 'full_name',
      desc: '',
      args: [],
    );
  }

  /// `No Order Found`
  String get no_order_found {
    return Intl.message(
      'No Order Found',
      name: 'no_order_found',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get subtotal {
    return Intl.message(
      'Subtotal',
      name: 'subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Points Earned`
  String get points_earned {
    return Intl.message(
      'Points Earned',
      name: 'points_earned',
      desc: '',
      args: [],
    );
  }

  /// `Currency`
  String get currency {
    return Intl.message(
      'Currency',
      name: 'currency',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get user {
    return Intl.message(
      'User',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Cost`
  String get shipping_cost {
    return Intl.message(
      'Shipping Cost',
      name: 'shipping_cost',
      desc: '',
      args: [],
    );
  }

  /// `Tax`
  String get tax {
    return Intl.message(
      'Tax',
      name: 'tax',
      desc: '',
      args: [],
    );
  }

  /// `Gift Details`
  String get gift_details {
    return Intl.message(
      'Gift Details',
      name: 'gift_details',
      desc: '',
      args: [],
    );
  }

  /// `Gift Name`
  String get gift_name {
    return Intl.message(
      'Gift Name',
      name: 'gift_name',
      desc: '',
      args: [],
    );
  }

  /// `Gift Category`
  String get gift_category {
    return Intl.message(
      'Gift Category',
      name: 'gift_category',
      desc: '',
      args: [],
    );
  }

  /// `Gift Price`
  String get gift_price {
    return Intl.message(
      'Gift Price',
      name: 'gift_price',
      desc: '',
      args: [],
    );
  }

  /// `Success, please check your cart`
  String get success_please_check_your_cart {
    return Intl.message(
      'Success, please check your cart',
      name: 'success_please_check_your_cart',
      desc: '',
      args: [],
    );
  }

  /// `You have add more products over than Stock`
  String get you_have_add_more_products_over_than_stock {
    return Intl.message(
      'You have add more products over than Stock',
      name: 'you_have_add_more_products_over_than_stock',
      desc: '',
      args: [],
    );
  }

  /// `You have to order one item at least`
  String get you_have_to_order_one_item_at_least {
    return Intl.message(
      'You have to order one item at least',
      name: 'you_have_to_order_one_item_at_least',
      desc: '',
      args: [],
    );
  }

  /// `Related Product`
  String get related_product {
    return Intl.message(
      'Related Product',
      name: 'related_product',
      desc: '',
      args: [],
    );
  }

  /// `New In`
  String get new_in {
    return Intl.message(
      'New In',
      name: 'new_in',
      desc: '',
      args: [],
    );
  }

  /// `On Sale`
  String get on_sale {
    return Intl.message(
      'On Sale',
      name: 'on_sale',
      desc: '',
      args: [],
    );
  }

  /// `Featured Products`
  String get featured_products {
    return Intl.message(
      'Featured Products',
      name: 'featured_products',
      desc: '',
      args: [],
    );
  }

  /// `Notify me`
  String get notify_me {
    return Intl.message(
      'Notify me',
      name: 'notify_me',
      desc: '',
      args: [],
    );
  }

  /// `Notify request has been sent successfully`
  String get notify_request_has_been_sent_successfully {
    return Intl.message(
      'Notify request has been sent successfully',
      name: 'notify_request_has_been_sent_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Reorder`
  String get reorder {
    return Intl.message(
      'Reorder',
      name: 'reorder',
      desc: '',
      args: [],
    );
  }

  /// `Do you really want to logout?`
  String get do_you_really_want_to_log_out {
    return Intl.message(
      'Do you really want to logout?',
      name: 'do_you_really_want_to_log_out',
      desc: '',
      args: [],
    );
  }

  /// `View all reviews`
  String get view_all_reviews {
    return Intl.message(
      'View all reviews',
      name: 'view_all_reviews',
      desc: '',
      args: [],
    );
  }

  /// `There are no categories yet.\n Please try again later.`
  String get there_are_no_categories_yet_please_try_again_later {
    return Intl.message(
      'There are no categories yet.\n Please try again later.',
      name: 'there_are_no_categories_yet_please_try_again_later',
      desc: '',
      args: [],
    );
  }

  /// `Please check your OTP code`
  String get please_check_your_OTP_code {
    return Intl.message(
      'Please check your OTP code',
      name: 'please_check_your_OTP_code',
      desc: '',
      args: [],
    );
  }

  /// `The address is required`
  String get the_address_is_required {
    return Intl.message(
      'The address is required',
      name: 'the_address_is_required',
      desc: '',
      args: [],
    );
  }

  /// `Tags`
  String get tags {
    return Intl.message(
      'Tags',
      name: 'tags',
      desc: '',
      args: [],
    );
  }

  /// `Tag`
  String get tag {
    return Intl.message(
      'Tag',
      name: 'tag',
      desc: '',
      args: [],
    );
  }

  /// `Comment`
  String get comment {
    return Intl.message(
      'Comment',
      name: 'comment',
      desc: '',
      args: [],
    );
  }

  /// `Review`
  String get review {
    return Intl.message(
      'Review',
      name: 'review',
      desc: '',
      args: [],
    );
  }

  /// `Upload Image`
  String get upload_image {
    return Intl.message(
      'Upload Image',
      name: 'upload_image',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for your feedback! We appreciate your support.`
  String get review_message {
    return Intl.message(
      'Thank you for your feedback! We appreciate your support.',
      name: 'review_message',
      desc: '',
      args: [],
    );
  }

  /// `We"d love to hear your thoughts! Please rate and review our product.`
  String get review_hint {
    return Intl.message(
      'We"d love to hear your thoughts! Please rate and review our product.',
      name: 'review_hint',
      desc: '',
      args: [],
    );
  }

  /// `You have already rated it.`
  String get you_have_already_rated_it {
    return Intl.message(
      'You have already rated it.',
      name: 'you_have_already_rated_it',
      desc: '',
      args: [],
    );
  }

  /// `You will earn points if you upload a photo.`
  String get you_will_earn_points_if_you_upload_a_photo {
    return Intl.message(
      'You will earn points if you upload a photo.',
      name: 'you_will_earn_points_if_you_upload_a_photo',
      desc: '',
      args: [],
    );
  }

  /// `You have to enter comment`
  String get you_have_to_enter_comment {
    return Intl.message(
      'You have to enter comment',
      name: 'you_have_to_enter_comment',
      desc: '',
      args: [],
    );
  }

  /// `Enter your comment`
  String get enter_your_comment {
    return Intl.message(
      'Enter your comment',
      name: 'enter_your_comment',
      desc: '',
      args: [],
    );
  }

  /// `All Reviews`
  String get all_reviews {
    return Intl.message(
      'All Reviews',
      name: 'all_reviews',
      desc: '',
      args: [],
    );
  }

  /// `Read less`
  String get read_less {
    return Intl.message(
      'Read less',
      name: 'read_less',
      desc: '',
      args: [],
    );
  }

  /// `No reviews are available for this product yet.`
  String get no_reviews_are_available_for_this_product_yet {
    return Intl.message(
      'No reviews are available for this product yet.',
      name: 'no_reviews_are_available_for_this_product_yet',
      desc: '',
      args: [],
    );
  }

  /// `Foloosi method is not available`
  String get foloosi_method_is_not_available {
    return Intl.message(
      'Foloosi method is not available',
      name: 'foloosi_method_is_not_available',
      desc: '',
      args: [],
    );
  }

  /// `No Product available Now.`
  String get no_product_available {
    return Intl.message(
      'No Product available Now.',
      name: 'no_product_available',
      desc: '',
      args: [],
    );
  }

  /// `Out of Bounds`
  String get out_of_bounds {
    return Intl.message(
      'Out of Bounds',
      name: 'out_of_bounds',
      desc: '',
      args: [],
    );
  }

  /// `Change City`
  String get change_city {
    return Intl.message(
      'Change City',
      name: 'change_city',
      desc: '',
      args: [],
    );
  }

  /// `The selected location is outside the allowed area. Would you like to change the city?`
  String get out_bound_area_message_ {
    return Intl.message(
      'The selected location is outside the allowed area. Would you like to change the city?',
      name: 'out_bound_area_message_',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for your purchase. Your payment has been successfully processed.\nYou can find your order details in the Settings screen. Press the 'My Orders' button to view your orders.`
  String get success_checkout_message {
    return Intl.message(
      'Thank you for your purchase. Your payment has been successfully processed.\nYou can find your order details in the Settings screen. Press the \'My Orders\' button to view your orders.',
      name: 'success_checkout_message',
      desc: '',
      args: [],
    );
  }

  /// `Enter company details`
  String get enter_company_details {
    return Intl.message(
      'Enter company details',
      name: 'enter_company_details',
      desc: '',
      args: [],
    );
  }

  /// `Company name`
  String get company_name {
    return Intl.message(
      'Company name',
      name: 'company_name',
      desc: '',
      args: [],
    );
  }

  /// `Company website`
  String get company_website {
    return Intl.message(
      'Company website',
      name: 'company_website',
      desc: '',
      args: [],
    );
  }

  /// `Company contact details`
  String get company_contact_details {
    return Intl.message(
      'Company contact details',
      name: 'company_contact_details',
      desc: '',
      args: [],
    );
  }

  /// `Company email`
  String get company_email {
    return Intl.message(
      'Company email',
      name: 'company_email',
      desc: '',
      args: [],
    );
  }

  /// `Personal information`
  String get personal_information {
    return Intl.message(
      'Personal information',
      name: 'personal_information',
      desc: '',
      args: [],
    );
  }

  /// `Personal email`
  String get personal_email {
    return Intl.message(
      'Personal email',
      name: 'personal_email',
      desc: '',
      args: [],
    );
  }

  /// `Upload trade license`
  String get upload_trade_license {
    return Intl.message(
      'Upload trade license',
      name: 'upload_trade_license',
      desc: '',
      args: [],
    );
  }

  /// `Select trade license`
  String get select_trade_license {
    return Intl.message(
      'Select trade license',
      name: 'select_trade_license',
      desc: '',
      args: [],
    );
  }

  /// `Source of knowledge`
  String get source_of_knowledge {
    return Intl.message(
      'Source of knowledge',
      name: 'source_of_knowledge',
      desc: '',
      args: [],
    );
  }

  /// `Please specify`
  String get please_specify {
    return Intl.message(
      'Please specify',
      name: 'please_specify',
      desc: '',
      args: [],
    );
  }

  /// `Additional information`
  String get additional_information {
    return Intl.message(
      'Additional information',
      name: 'additional_information',
      desc: '',
      args: [],
    );
  }

  /// `Terms and conditions`
  String get terms_and_conditions {
    return Intl.message(
      'Terms and conditions',
      name: 'terms_and_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Agree terms`
  String get agree_terms {
    return Intl.message(
      'Agree terms',
      name: 'agree_terms',
      desc: '',
      args: [],
    );
  }

  /// `The current role is:`
  String get the_current_role_is {
    return Intl.message(
      'The current role is:',
      name: 'the_current_role_is',
      desc: '',
      args: [],
    );
  }

  /// `No FAQs available.`
  String get no_FAQs_available {
    return Intl.message(
      'No FAQs available.',
      name: 'no_FAQs_available',
      desc: '',
      args: [],
    );
  }

  /// `No Privacy and policy available.`
  String get no_privacy_and_policy_available {
    return Intl.message(
      'No Privacy and policy available.',
      name: 'no_privacy_and_policy_available',
      desc: '',
      args: [],
    );
  }

  /// `No Shipping Policy available.`
  String get no_shipping_policy_available {
    return Intl.message(
      'No Shipping Policy available.',
      name: 'no_shipping_policy_available',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Policy`
  String get shipping_policy {
    return Intl.message(
      'Shipping Policy',
      name: 'shipping_policy',
      desc: '',
      args: [],
    );
  }

  /// `Branches`
  String get branches {
    return Intl.message(
      'Branches',
      name: 'branches',
      desc: '',
      args: [],
    );
  }

  /// `Failed to get location:`
  String get failed_to_get_location {
    return Intl.message(
      'Failed to get location:',
      name: 'failed_to_get_location',
      desc: '',
      args: [],
    );
  }

  /// `Here are our contact details:`
  String get here_are_our_contact_details {
    return Intl.message(
      'Here are our contact details:',
      name: 'here_are_our_contact_details',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get support {
    return Intl.message(
      'Support',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `Support Section`
  String get support_section {
    return Intl.message(
      'Support Section',
      name: 'support_section',
      desc: '',
      args: [],
    );
  }

  /// `Filter by:`
  String get filter_by {
    return Intl.message(
      'Filter by:',
      name: 'filter_by',
      desc: '',
      args: [],
    );
  }

  /// `Sort Options`
  String get sort_options {
    return Intl.message(
      'Sort Options',
      name: 'sort_options',
      desc: '',
      args: [],
    );
  }

  /// `Change Role`
  String get change_role {
    return Intl.message(
      'Change Role',
      name: 'change_role',
      desc: '',
      args: [],
    );
  }

  /// `Add business information`
  String get add_business_information {
    return Intl.message(
      'Add business information',
      name: 'add_business_information',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for your purchase. Your payment has been successfully processed.\nYou can find your reservition details in the Booking Tap.`
  String get success_pay_message {
    return Intl.message(
      'Thank you for your purchase. Your payment has been successfully processed.\nYou can find your reservition details in the Booking Tap.',
      name: 'success_pay_message',
      desc: '',
      args: [],
    );
  }

  /// `Registration has been successful. You can log in now.`
  String get register_success_message {
    return Intl.message(
      'Registration has been successful. You can log in now.',
      name: 'register_success_message',
      desc: '',
      args: [],
    );
  }

  /// `Please select a color and size first`
  String get please_select_a_color_and_size_first {
    return Intl.message(
      'Please select a color and size first',
      name: 'please_select_a_color_and_size_first',
      desc: '',
      args: [],
    );
  }

  /// `Stock doesn't have this amount`
  String get stock_does_have_this_amount {
    return Intl.message(
      'Stock doesn\'t have this amount',
      name: 'stock_does_have_this_amount',
      desc: '',
      args: [],
    );
  }

  /// `Product added successfully`
  String get product_added_successfully {
    return Intl.message(
      'Product added successfully',
      name: 'product_added_successfully',
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

  /// `Please verify the payment before selecting the gift and address.`
  String get please_verify_the_payment_before_selecting_the_gift_and_address {
    return Intl.message(
      'Please verify the payment before selecting the gift and address.',
      name: 'please_verify_the_payment_before_selecting_the_gift_and_address',
      desc: '',
      args: [],
    );
  }

  /// `Oops! No notifications yet`
  String get oops_no_notifications_yet {
    return Intl.message(
      'Oops! No notifications yet',
      name: 'oops_no_notifications_yet',
      desc: '',
      args: [],
    );
  }

  /// `It seems that you've got a blank slate.\n We’ll let you know when updates arrive!`
  String get no_notification {
    return Intl.message(
      'It seems that you\'ve got a blank slate.\n We’ll let you know when updates arrive!',
      name: 'no_notification',
      desc: '',
      args: [],
    );
  }

  /// `The product was added successfully`
  String get the_product_added_successfully {
    return Intl.message(
      'The product was added successfully',
      name: 'the_product_added_successfully',
      desc: '',
      args: [],
    );
  }

  /// `View all products`
  String get view_all_products {
    return Intl.message(
      'View all products',
      name: 'view_all_products',
      desc: '',
      args: [],
    );
  }

  /// `Invalid phone number`
  String get invalid_phone_number {
    return Intl.message(
      'Invalid phone number',
      name: 'invalid_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid URL starting with http:// or https://`
  String get invalid_enter_url {
    return Intl.message(
      'Please enter a valid URL starting with http:// or https://',
      name: 'invalid_enter_url',
      desc: '',
      args: [],
    );
  }

  /// `The username must be at least 4 characters`
  String get invalid_username {
    return Intl.message(
      'The username must be at least 4 characters',
      name: 'invalid_username',
      desc: '',
      args: [],
    );
  }

  /// `Address must be 5 characters at least`
  String get invalid_address {
    return Intl.message(
      'Address must be 5 characters at least',
      name: 'invalid_address',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter a username`
  String get please_enter_a_username {
    return Intl.message(
      'Please Enter a username',
      name: 'please_enter_a_username',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter your first name`
  String get enter_your_first_name {
    return Intl.message(
      'Please Enter your first name',
      name: 'enter_your_first_name',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter your last name`
  String get enter_your_last_name {
    return Intl.message(
      'Please Enter your last name',
      name: 'enter_your_last_name',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter your Company name`
  String get enter_your_company_name {
    return Intl.message(
      'Please Enter your Company name',
      name: 'enter_your_company_name',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter your address`
  String get enter_your_address {
    return Intl.message(
      'Please Enter your address',
      name: 'enter_your_address',
      desc: '',
      args: [],
    );
  }

  /// `Please fill required fields`
  String get please_fill_required_fields {
    return Intl.message(
      'Please fill required fields',
      name: 'please_fill_required_fields',
      desc: '',
      args: [],
    );
  }

  /// `No user data found`
  String get no_user_data_found {
    return Intl.message(
      'No user data found',
      name: 'no_user_data_found',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pending {
    return Intl.message(
      'Pending',
      name: 'pending',
      desc: '',
      args: [],
    );
  }

  /// `Done Successfully`
  String get done_successfully {
    return Intl.message(
      'Done Successfully',
      name: 'done_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Package details`
  String get package_details {
    return Intl.message(
      'Package details',
      name: 'package_details',
      desc: '',
      args: [],
    );
  }

  /// `in Stock`
  String get in_stock {
    return Intl.message(
      'in Stock',
      name: 'in_stock',
      desc: '',
      args: [],
    );
  }

  /// `you have`
  String get you_have {
    return Intl.message(
      'you have',
      name: 'you_have',
      desc: '',
      args: [],
    );
  }

  /// `points`
  String get points {
    return Intl.message(
      'points',
      name: 'points',
      desc: '',
      args: [],
    );
  }

  /// `you will pay`
  String get you_will_pay {
    return Intl.message(
      'you will pay',
      name: 'you_will_pay',
      desc: '',
      args: [],
    );
  }

  /// `for this method`
  String get for_this_method {
    return Intl.message(
      'for this method',
      name: 'for_this_method',
      desc: '',
      args: [],
    );
  }

  /// `Payment was completed successfully by`
  String get success_pay_with {
    return Intl.message(
      'Payment was completed successfully by',
      name: 'success_pay_with',
      desc: '',
      args: [],
    );
  }

  /// `please enter address`
  String get please_enter_address {
    return Intl.message(
      'please enter address',
      name: 'please_enter_address',
      desc: '',
      args: [],
    );
  }

  /// `please enter street`
  String get please_enter_street {
    return Intl.message(
      'please enter street',
      name: 'please_enter_street',
      desc: '',
      args: [],
    );
  }

  /// `please enter postal code`
  String get please_enter_postal_code {
    return Intl.message(
      'please enter postal code',
      name: 'please_enter_postal_code',
      desc: '',
      args: [],
    );
  }

  /// `please enter flat number`
  String get please_enter_flat_number {
    return Intl.message(
      'please enter flat number',
      name: 'please_enter_flat_number',
      desc: '',
      args: [],
    );
  }

  /// `please enter villa number`
  String get please_enter_villa_number {
    return Intl.message(
      'please enter villa number',
      name: 'please_enter_villa_number',
      desc: '',
      args: [],
    );
  }

  /// `please select location on map`
  String get please_select_location_on_map {
    return Intl.message(
      'please select location on map',
      name: 'please_select_location_on_map',
      desc: '',
      args: [],
    );
  }

  /// `Proceed`
  String get proceed {
    return Intl.message(
      'Proceed',
      name: 'proceed',
      desc: '',
      args: [],
    );
  }

  /// `Show Order`
  String get show_order {
    return Intl.message(
      'Show Order',
      name: 'show_order',
      desc: '',
      args: [],
    );
  }

  /// `company name required`
  String get company_name_required {
    return Intl.message(
      'company name required',
      name: 'company_name_required',
      desc: '',
      args: [],
    );
  }

  /// `please enter company_name`
  String get please_enter_company_name {
    return Intl.message(
      'please enter company_name',
      name: 'please_enter_company_name',
      desc: '',
      args: [],
    );
  }

  /// `please enter valid url`
  String get please_enter_valid_url {
    return Intl.message(
      'please enter valid url',
      name: 'please_enter_valid_url',
      desc: '',
      args: [],
    );
  }

  /// `name required`
  String get name_required {
    return Intl.message(
      'name required',
      name: 'name_required',
      desc: '',
      args: [],
    );
  }

  /// `please enter full name`
  String get please_enter_full_name {
    return Intl.message(
      'please enter full name',
      name: 'please_enter_full_name',
      desc: '',
      args: [],
    );
  }

  /// `invalid_email`
  String get invalid_email {
    return Intl.message(
      'invalid_email',
      name: 'invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `please enter valid email`
  String get please_enter_valid_email {
    return Intl.message(
      'please enter valid email',
      name: 'please_enter_valid_email',
      desc: '',
      args: [],
    );
  }

  /// `trade license required`
  String get trade_license_required {
    return Intl.message(
      'trade license required',
      name: 'trade_license_required',
      desc: '',
      args: [],
    );
  }

  /// `please select trade license`
  String get please_select_trade_license {
    return Intl.message(
      'please select trade license',
      name: 'please_select_trade_license',
      desc: '',
      args: [],
    );
  }

  /// `source of knowledge required`
  String get source_of_knowledge_required {
    return Intl.message(
      'source of knowledge required',
      name: 'source_of_knowledge_required',
      desc: '',
      args: [],
    );
  }

  /// `please select source of knowledge`
  String get please_select_source_of_knowledge {
    return Intl.message(
      'please select source of knowledge',
      name: 'please_select_source_of_knowledge',
      desc: '',
      args: [],
    );
  }

  /// `please select profile picture`
  String get please_select_profile_picture {
    return Intl.message(
      'please select profile picture',
      name: 'please_select_profile_picture',
      desc: '',
      args: [],
    );
  }

  /// `please upload profile image`
  String get please_upload_profile_image {
    return Intl.message(
      'please upload profile image',
      name: 'please_upload_profile_image',
      desc: '',
      args: [],
    );
  }

  /// `confirm details`
  String get confirm_details {
    return Intl.message(
      'confirm details',
      name: 'confirm_details',
      desc: '',
      args: [],
    );
  }

  /// `location`
  String get location {
    return Intl.message(
      'location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `please enter address and pick location on map`
  String get please_enter_address_and_location {
    return Intl.message(
      'please enter address and pick location on map',
      name: 'please_enter_address_and_location',
      desc: '',
      args: [],
    );
  }

  /// `missing image`
  String get missing_image_title {
    return Intl.message(
      'missing image',
      name: 'missing_image_title',
      desc: '',
      args: [],
    );
  }

  /// `validation error`
  String get validation_error {
    return Intl.message(
      'validation error',
      name: 'validation_error',
      desc: '',
      args: [],
    );
  }

  /// `Return and Exchange Policy`
  String get return_and_exchange_policy {
    return Intl.message(
      'Return and Exchange Policy',
      name: 'return_and_exchange_policy',
      desc: '',
      args: [],
    );
  }

  /// `Server error please try again later`
  String get server_error_please_try_again_later {
    return Intl.message(
      'Server error please try again later',
      name: 'server_error_please_try_again_later',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'oops_it looks_like_you_are_not_connected_to_the_internet' key

  /// `Please Check your internet and try again`
  String get please_check_your_internet_and_try_again {
    return Intl.message(
      'Please Check your internet and try again',
      name: 'please_check_your_internet_and_try_again',
      desc: '',
      args: [],
    );
  }

  /// `try again`
  String get try_aging {
    return Intl.message(
      'try again',
      name: 'try_aging',
      desc: '',
      args: [],
    );
  }

  /// `point`
  String get point {
    return Intl.message(
      'point',
      name: 'point',
      desc: '',
      args: [],
    );
  }

  /// `Charge the wallet`
  String get chargeTheWallet {
    return Intl.message(
      'Charge the wallet',
      name: 'chargeTheWallet',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the amount you would like to charge to your wallet`
  String get pleaseEnterTheAmount {
    return Intl.message(
      'Please enter the amount you would like to charge to your wallet',
      name: 'pleaseEnterTheAmount',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get amout {
    return Intl.message(
      'Amount',
      name: 'amout',
      desc: '',
      args: [],
    );
  }

  /// `Charge`
  String get chage {
    return Intl.message(
      'Charge',
      name: 'chage',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid number`
  String get please_enter_a_valid_number {
    return Intl.message(
      'Please enter a valid number',
      name: 'please_enter_a_valid_number',
      desc: '',
      args: [],
    );
  }

  /// `You have to enter the amount to charge`
  String get you_have_to_enter_the_amount_to_charge {
    return Intl.message(
      'You have to enter the amount to charge',
      name: 'you_have_to_enter_the_amount_to_charge',
      desc: '',
      args: [],
    );
  }

  /// `No File was selected`
  String get no_file_was_selected {
    return Intl.message(
      'No File was selected',
      name: 'no_file_was_selected',
      desc: '',
      args: [],
    );
  }

  /// `Please add additional information`
  String get please_add_additional_information {
    return Intl.message(
      'Please add additional information',
      name: 'please_add_additional_information',
      desc: '',
      args: [],
    );
  }

  /// `No advertisement available at the moment.`
  String get no_advertisement_available_at_the_moment {
    return Intl.message(
      'No advertisement available at the moment.',
      name: 'no_advertisement_available_at_the_moment',
      desc: '',
      args: [],
    );
  }

  /// `Please sign in to continue your request.`
  String get please_sign_in_to_continue_your_request {
    return Intl.message(
      'Please sign in to continue your request.',
      name: 'please_sign_in_to_continue_your_request',
      desc: '',
      args: [],
    );
  }

  /// `Expired`
  String get expired {
    return Intl.message(
      'Expired',
      name: 'expired',
      desc: '',
      args: [],
    );
  }

  /// `Internet Error`
  String get internet_error {
    return Intl.message(
      'Internet Error',
      name: 'internet_error',
      desc: '',
      args: [],
    );
  }

  /// `Bundle added successfully, Check the cart`
  String get bundle_added_successfully_check_the_cart {
    return Intl.message(
      'Bundle added successfully, Check the cart',
      name: 'bundle_added_successfully_check_the_cart',
      desc: '',
      args: [],
    );
  }

  /// `Other Bundles`
  String get other_bundles {
    return Intl.message(
      'Other Bundles',
      name: 'other_bundles',
      desc: '',
      args: [],
    );
  }

  /// `Bundles`
  String get bundles {
    return Intl.message(
      'Bundles',
      name: 'bundles',
      desc: '',
      args: [],
    );
  }

  /// `No packages for this category`
  String get no_packages_for_this_category {
    return Intl.message(
      'No packages for this category',
      name: 'no_packages_for_this_category',
      desc: '',
      args: [],
    );
  }

  /// `Cross Sales Products`
  String get cross_sales_products {
    return Intl.message(
      'Cross Sales Products',
      name: 'cross_sales_products',
      desc: '',
      args: [],
    );
  }

  /// `Up Sales Products`
  String get up_sales_products {
    return Intl.message(
      'Up Sales Products',
      name: 'up_sales_products',
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

  /// `Sizes`
  String get sizes {
    return Intl.message(
      'Sizes',
      name: 'sizes',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Skip as guest`
  String get skip_as_guest {
    return Intl.message(
      'Skip as guest',
      name: 'skip_as_guest',
      desc: '',
      args: [],
    );
  }

  /// `User Guest`
  String get user_guest {
    return Intl.message(
      'User Guest',
      name: 'user_guest',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Closed`
  String get closed {
    return Intl.message(
      'Closed',
      name: 'closed',
      desc: '',
      args: [],
    );
  }

  /// `Oops! It looks like you’re not connected to the internet.\nPlease check your connection and try again.`
  String get internet_message {
    return Intl.message(
      'Oops! It looks like you’re not connected to the internet.\nPlease check your connection and try again.',
      name: 'internet_message',
      desc: '',
      args: [],
    );
  }

  /// `You don\r't have any address`
  String get you_dont_have_any_address {
    return Intl.message(
      'You don\r\'t have any address',
      name: 'you_dont_have_any_address',
      desc: '',
      args: [],
    );
  }

  /// `No Street Info`
  String get no_street_info {
    return Intl.message(
      'No Street Info',
      name: 'no_street_info',
      desc: '',
      args: [],
    );
  }

  /// `Please select a category`
  String get please_select_a_category {
    return Intl.message(
      'Please select a category',
      name: 'please_select_a_category',
      desc: '',
      args: [],
    );
  }

  /// `Order Complete`
  String get order_complete {
    return Intl.message(
      'Order Complete',
      name: 'order_complete',
      desc: '',
      args: [],
    );
  }

  /// `Thank You! Your Order has been received.`
  String get thank_you_your_order_has_been_received {
    return Intl.message(
      'Thank You! Your Order has been received.',
      name: 'thank_you_your_order_has_been_received',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for shopping with us!`
  String get thank_you_for_shopping_with_us {
    return Intl.message(
      'Thank you for shopping with us!',
      name: 'thank_you_for_shopping_with_us',
      desc: '',
      args: [],
    );
  }

  /// `Your order is confirmed,\n and we’re working hard to make sure it exceeds your expectations`
  String
      get your_order_is_confirmed_and_were_working_hard_to_make_sure_it_exceeds_your_expectations {
    return Intl.message(
      'Your order is confirmed,\n and we’re working hard to make sure it exceeds your expectations',
      name:
          'your_order_is_confirmed_and_were_working_hard_to_make_sure_it_exceeds_your_expectations',
      desc: '',
      args: [],
    );
  }

  /// `Order summary`
  String get order_summary {
    return Intl.message(
      'Order summary',
      name: 'order_summary',
      desc: '',
      args: [],
    );
  }

  /// `Product`
  String get product {
    return Intl.message(
      'Product',
      name: 'product',
      desc: '',
      args: [],
    );
  }

  /// `Your Order`
  String get your_order {
    return Intl.message(
      'Your Order',
      name: 'your_order',
      desc: '',
      args: [],
    );
  }

  /// `Billing Address`
  String get billing_address {
    return Intl.message(
      'Billing Address',
      name: 'billing_address',
      desc: '',
      args: [],
    );
  }

  /// `Package`
  String get package {
    return Intl.message(
      'Package',
      name: 'package',
      desc: '',
      args: [],
    );
  }

  /// `Items count`
  String get items_count {
    return Intl.message(
      'Items count',
      name: 'items_count',
      desc: '',
      args: [],
    );
  }

  /// `Unknown item type`
  String get unknown_item_type {
    return Intl.message(
      'Unknown item type',
      name: 'unknown_item_type',
      desc: '',
      args: [],
    );
  }

  /// `Bundle`
  String get bundle {
    return Intl.message(
      'Bundle',
      name: 'bundle',
      desc: '',
      args: [],
    );
  }

  /// `Blogs`
  String get blogs {
    return Intl.message(
      'Blogs',
      name: 'blogs',
      desc: '',
      args: [],
    );
  }

  /// `Likes`
  String get likes {
    return Intl.message(
      'Likes',
      name: 'likes',
      desc: '',
      args: [],
    );
  }

  /// `Views`
  String get views {
    return Intl.message(
      'Views',
      name: 'views',
      desc: '',
      args: [],
    );
  }

  /// `Comments`
  String get comments {
    return Intl.message(
      'Comments',
      name: 'comments',
      desc: '',
      args: [],
    );
  }

  /// `Write a comment`
  String get write_a_comment {
    return Intl.message(
      'Write a comment',
      name: 'write_a_comment',
      desc: '',
      args: [],
    );
  }

  /// `No Comments`
  String get no_comments {
    return Intl.message(
      'No Comments',
      name: 'no_comments',
      desc: '',
      args: [],
    );
  }

  /// `Delete Comment`
  String get delete_comment {
    return Intl.message(
      'Delete Comment',
      name: 'delete_comment',
      desc: '',
      args: [],
    );
  }

  /// `Unable to share`
  String get unable_to_share {
    return Intl.message(
      'Unable to share',
      name: 'unable_to_share',
      desc: '',
      args: [],
    );
  }

  /// `Description details`
  String get description_details {
    return Intl.message(
      'Description details',
      name: 'description_details',
      desc: '',
      args: [],
    );
  }

  /// `Enter points to deduct`
  String get enter_points_to_deduct {
    return Intl.message(
      'Enter points to deduct',
      name: 'enter_points_to_deduct',
      desc: '',
      args: [],
    );
  }

  /// `You cannot enter more than`
  String get you_cannot_enter_more_than {
    return Intl.message(
      'You cannot enter more than',
      name: 'you_cannot_enter_more_than',
      desc: '',
      args: [],
    );
  }

  /// `Points cannot be negative.`
  String get points_cannot_be_negative {
    return Intl.message(
      'Points cannot be negative.',
      name: 'points_cannot_be_negative',
      desc: '',
      args: [],
    );
  }

  /// `Wallet Balance`
  String get wallet_balance {
    return Intl.message(
      'Wallet Balance',
      name: 'wallet_balance',
      desc: '',
      args: [],
    );
  }

  /// `Enter amount to deduct`
  String get enter_amount_to_deduct {
    return Intl.message(
      'Enter amount to deduct',
      name: 'enter_amount_to_deduct',
      desc: '',
      args: [],
    );
  }

  /// `Amount cannot be negative.`
  String get amount_cannot_be_negative {
    return Intl.message(
      'Amount cannot be negative.',
      name: 'amount_cannot_be_negative',
      desc: '',
      args: [],
    );
  }

  /// `You cannot enter an amount greater than your wallet balance.`
  String get you_cannot_enter_an_amount_greater_than_your_wallet_balance {
    return Intl.message(
      'You cannot enter an amount greater than your wallet balance.',
      name: 'you_cannot_enter_an_amount_greater_than_your_wallet_balance',
      desc: '',
      args: [],
    );
  }

  /// `You cannot enter an amount greater than order value.`
  String get you_cannot_enter_an_amount_greater_than_order_value {
    return Intl.message(
      'You cannot enter an amount greater than order value.',
      name: 'you_cannot_enter_an_amount_greater_than_order_value',
      desc: '',
      args: [],
    );
  }

  /// `Tax inclusive`
  String get tax_inclusive {
    return Intl.message(
      'Tax inclusive',
      name: 'tax_inclusive',
      desc: '',
      args: [],
    );
  }

  /// `Add Phone Number`
  String get add_phone_number {
    return Intl.message(
      'Add Phone Number',
      name: 'add_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Please Add the Address or Number of the Phone`
  String get please_add_address_or_number_phone {
    return Intl.message(
      'Please Add the Address or Number of the Phone',
      name: 'please_add_address_or_number_phone',
      desc: '',
      args: [],
    );
  }

  /// `Failed to update profile`
  String get failed_to_update_profile {
    return Intl.message(
      'Failed to update profile',
      name: 'failed_to_update_profile',
      desc: '',
      args: [],
    );
  }

  /// `Seconds left`
  String get seconds_left {
    return Intl.message(
      'Seconds left',
      name: 'seconds_left',
      desc: '',
      args: [],
    );
  }

  /// `Resend code`
  String get resend_code {
    return Intl.message(
      'Resend code',
      name: 'resend_code',
      desc: '',
      args: [],
    );
  }

  /// `You can't add more`
  String get you_can_not_add_more {
    return Intl.message(
      'You can\'t add more',
      name: 'you_can_not_add_more',
      desc: '',
      args: [],
    );
  }

  /// `There are no blogs available at the moment.`
  String get no_blogs_available_at_the_moment {
    return Intl.message(
      'There are no blogs available at the moment.',
      name: 'no_blogs_available_at_the_moment',
      desc: '',
      args: [],
    );
  }

  /// `Update the application`
  String get update_the_application {
    return Intl.message(
      'Update the application',
      name: 'update_the_application',
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

  /// `There is a new version of the app with improvements and new features.`
  String get update_message1 {
    return Intl.message(
      'There is a new version of the app with improvements and new features.',
      name: 'update_message1',
      desc: '',
      args: [],
    );
  }

  /// `Please update the app to enjoy the full experience.`
  String get update_message2 {
    return Intl.message(
      'Please update the app to enjoy the full experience.',
      name: 'update_message2',
      desc: '',
      args: [],
    );
  }

  /// `Update now`
  String get update_now {
    return Intl.message(
      'Update now',
      name: 'update_now',
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

  /// `View all`
  String get view_all {
    return Intl.message(
      'View all',
      name: 'view_all',
      desc: '',
      args: [],
    );
  }

  /// `Brands`
  String get brands {
    return Intl.message(
      'Brands',
      name: 'brands',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get favorite {
    return Intl.message(
      'Favorite',
      name: 'favorite',
      desc: '',
      args: [],
    );
  }

  /// `No favorite products`
  String get no_favorite_products {
    return Intl.message(
      'No favorite products',
      name: 'no_favorite_products',
      desc: '',
      args: [],
    );
  }

  /// `Product details`
  String get product_details {
    return Intl.message(
      'Product details',
      name: 'product_details',
      desc: '',
      args: [],
    );
  }

  /// `Storage`
  String get storage {
    return Intl.message(
      'Storage',
      name: 'storage',
      desc: '',
      args: [],
    );
  }

  /// `Type Coupon code`
  String get type_coupon_code {
    return Intl.message(
      'Type Coupon code',
      name: 'type_coupon_code',
      desc: '',
      args: [],
    );
  }

  /// `Delete Cart`
  String get delete_cart {
    return Intl.message(
      'Delete Cart',
      name: 'delete_cart',
      desc: '',
      args: [],
    );
  }

  /// `Newest`
  String get newest {
    return Intl.message(
      'Newest',
      name: 'newest',
      desc: '',
      args: [],
    );
  }

  /// `Oldest`
  String get oldest {
    return Intl.message(
      'Oldest',
      name: 'oldest',
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

  /// `Filters`
  String get filters {
    return Intl.message(
      'Filters',
      name: 'filters',
      desc: '',
      args: [],
    );
  }

  /// `Clear filters`
  String get clear_filters {
    return Intl.message(
      'Clear filters',
      name: 'clear_filters',
      desc: '',
      args: [],
    );
  }

  /// `Sort by`
  String get sort_by {
    return Intl.message(
      'Sort by',
      name: 'sort_by',
      desc: '',
      args: [],
    );
  }

  /// `No search results`
  String get no_search_results {
    return Intl.message(
      'No search results',
      name: 'no_search_results',
      desc: '',
      args: [],
    );
  }

  /// `Delete product`
  String get delete_product {
    return Intl.message(
      'Delete product',
      name: 'delete_product',
      desc: '',
      args: [],
    );
  }

  /// `Increase`
  String get increase {
    return Intl.message(
      'Increase',
      name: 'increase',
      desc: '',
      args: [],
    );
  }

  /// `Decrease`
  String get decrease {
    return Intl.message(
      'Decrease',
      name: 'decrease',
      desc: '',
      args: [],
    );
  }

  /// `You cannot add more.`
  String get you_cannot_add_more {
    return Intl.message(
      'You cannot add more.',
      name: 'you_cannot_add_more',
      desc: '',
      args: [],
    );
  }

  /// `Discount`
  String get discount {
    return Intl.message(
      'Discount',
      name: 'discount',
      desc: '',
      args: [],
    );
  }

  /// `Select Payment Method`
  String get select_payment_method {
    return Intl.message(
      'Select Payment Method',
      name: 'select_payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Please complete data`
  String get please_complete_data {
    return Intl.message(
      'Please complete data',
      name: 'please_complete_data',
      desc: '',
      args: [],
    );
  }

  /// `Choose option`
  String get choose_option {
    return Intl.message(
      'Choose option',
      name: 'choose_option',
      desc: '',
      args: [],
    );
  }

  /// `Cities`
  String get cities {
    return Intl.message(
      'Cities',
      name: 'cities',
      desc: '',
      args: [],
    );
  }

  /// `Countries`
  String get countries {
    return Intl.message(
      'Countries',
      name: 'countries',
      desc: '',
      args: [],
    );
  }

  /// `Enable location`
  String get enable_location {
    return Intl.message(
      'Enable location',
      name: 'enable_location',
      desc: '',
      args: [],
    );
  }

  /// `Enable`
  String get enable {
    return Intl.message(
      'Enable',
      name: 'enable',
      desc: '',
      args: [],
    );
  }

  /// `Please enable location services to use this feature.`
  String get please_enable_location_services_to_use_this_feature {
    return Intl.message(
      'Please enable location services to use this feature.',
      name: 'please_enable_location_services_to_use_this_feature',
      desc: '',
      args: [],
    );
  }

  /// `Open Settings`
  String get open_settings {
    return Intl.message(
      'Open Settings',
      name: 'open_settings',
      desc: '',
      args: [],
    );
  }

  /// `Location permission is permanently rejected`
  String get location_permission_is_permanently_rejected {
    return Intl.message(
      'Location permission is permanently rejected',
      name: 'location_permission_is_permanently_rejected',
      desc: '',
      args: [],
    );
  }

  /// `Please enable location permission from settings.`
  String get please_enable_location_permission_from_settings {
    return Intl.message(
      'Please enable location permission from settings.',
      name: 'please_enable_location_permission_from_settings',
      desc: '',
      args: [],
    );
  }

  /// `Location permission denied`
  String get location_permission_denied {
    return Intl.message(
      'Location permission denied',
      name: 'location_permission_denied',
      desc: '',
      args: [],
    );
  }

  /// `Location services are disabled.`
  String get location_services_are_disabled {
    return Intl.message(
      'Location services are disabled.',
      name: 'location_services_are_disabled',
      desc: '',
      args: [],
    );
  }

  /// `Location permissions are permanently denied.`
  String get location_permissions_are_permanently_denied {
    return Intl.message(
      'Location permissions are permanently denied.',
      name: 'location_permissions_are_permanently_denied',
      desc: '',
      args: [],
    );
  }

  /// `Add To Cart Successfully`
  String get add_to_cart_successfully {
    return Intl.message(
      'Add To Cart Successfully',
      name: 'add_to_cart_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Client name`
  String get client_name {
    return Intl.message(
      'Client name',
      name: 'client_name',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message(
      'Products',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `Do you really want to empty cart`
  String get do_you_really_want_to_empty_cart {
    return Intl.message(
      'Do you really want to empty cart',
      name: 'do_you_really_want_to_empty_cart',
      desc: '',
      args: [],
    );
  }

  /// `Do you really want to clear wishlist`
  String get do_you_really_want_to_clear_wishlist {
    return Intl.message(
      'Do you really want to clear wishlist',
      name: 'do_you_really_want_to_clear_wishlist',
      desc: '',
      args: [],
    );
  }

  /// `Confirm account`
  String get confirm_account {
    return Intl.message(
      'Confirm account',
      name: 'confirm_account',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the OTP code`
  String get please_enter_the_otp_code {
    return Intl.message(
      'Please enter the OTP code',
      name: 'please_enter_the_otp_code',
      desc: '',
      args: [],
    );
  }

  /// `This session has incomplete account data.\nPlease complete your account details.`
  String get account_session_expired {
    return Intl.message(
      'This session has incomplete account data.\nPlease complete your account details.',
      name: 'account_session_expired',
      desc: '',
      args: [],
    );
  }

  /// `Price range`
  String get price_range {
    return Intl.message(
      'Price range',
      name: 'price_range',
      desc: '',
      args: [],
    );
  }

  /// `Please choose city`
  String get please_choose_city {
    return Intl.message(
      'Please choose city',
      name: 'please_choose_city',
      desc: '',
      args: [],
    );
  }

  /// `Unknown page`
  String get unknown_page {
    return Intl.message(
      'Unknown page',
      name: 'unknown_page',
      desc: '',
      args: [],
    );
  }

  /// `This page is currently unavailable.`
  String get this_page_is_currently_unavailable {
    return Intl.message(
      'This page is currently unavailable.',
      name: 'this_page_is_currently_unavailable',
      desc: '',
      args: [],
    );
  }

  /// `A password reset code has been sent. Please check your email.`
  String get a_password_reset_code_has_been_sent_please_check_your_email {
    return Intl.message(
      'A password reset code has been sent. Please check your email.',
      name: 'a_password_reset_code_has_been_sent_please_check_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your new password to reset it.`
  String get please_enter_your_new_password_to_reset_it {
    return Intl.message(
      'Please enter your new password to reset it.',
      name: 'please_enter_your_new_password_to_reset_it',
      desc: '',
      args: [],
    );
  }

  /// `Wait please`
  String get wait_please {
    return Intl.message(
      'Wait please',
      name: 'wait_please',
      desc: '',
      args: [],
    );
  }

  /// `Selected color`
  String get selected_color {
    return Intl.message(
      'Selected color',
      name: 'selected_color',
      desc: '',
      args: [],
    );
  }

  /// `Free Fast Shipping on orders +120`
  String get free_fast_shipping_on_orders {
    return Intl.message(
      'Free Fast Shipping on orders +120',
      name: 'free_fast_shipping_on_orders',
      desc: '',
      args: [],
    );
  }

  /// `Easy Return and Exchange within 7 days`
  String get easy_return_and_exchange_within_seven_days {
    return Intl.message(
      'Easy Return and Exchange within 7 days',
      name: 'easy_return_and_exchange_within_seven_days',
      desc: '',
      args: [],
    );
  }

  /// `Available payment methods`
  String get available_payment_methods {
    return Intl.message(
      'Available payment methods',
      name: 'available_payment_methods',
      desc: '',
      args: [],
    );
  }

  /// `Out of stock`
  String get out_of_stock {
    return Intl.message(
      'Out of stock',
      name: 'out_of_stock',
      desc: '',
      args: [],
    );
  }

  /// `Please remove unavailable items`
  String get please_remove_unavailable_items {
    return Intl.message(
      'Please remove unavailable items',
      name: 'please_remove_unavailable_items',
      desc: '',
      args: [],
    );
  }

  /// `The coupon is not valid`
  String get the_coupon_is_not_valid {
    return Intl.message(
      'The coupon is not valid',
      name: 'the_coupon_is_not_valid',
      desc: '',
      args: [],
    );
  }

  /// `Free shipping`
  String get free_shipping {
    return Intl.message(
      'Free shipping',
      name: 'free_shipping',
      desc: '',
      args: [],
    );
  }

  /// `Check our this product`
  String get check_our_this_product {
    return Intl.message(
      'Check our this product',
      name: 'check_our_this_product',
      desc: '',
      args: [],
    );
  }

  /// `Choose a free gift`
  String get choose_a_free_gift {
    return Intl.message(
      'Choose a free gift',
      name: 'choose_a_free_gift',
      desc: '',
      args: [],
    );
  }

  /// `No gift selected`
  String get no_gift_selected {
    return Intl.message(
      'No gift selected',
      name: 'no_gift_selected',
      desc: '',
      args: [],
    );
  }

  /// `Choose again`
  String get choose_again {
    return Intl.message(
      'Choose again',
      name: 'choose_again',
      desc: '',
      args: [],
    );
  }

  /// `Offers`
  String get offers {
    return Intl.message(
      'Offers',
      name: 'offers',
      desc: '',
      args: [],
    );
  }

  /// `Offer expired`
  String get offer_expired {
    return Intl.message(
      'Offer expired',
      name: 'offer_expired',
      desc: '',
      args: [],
    );
  }

  /// `D`
  String get d {
    return Intl.message(
      'D',
      name: 'd',
      desc: '',
      args: [],
    );
  }

  /// `M`
  String get m {
    return Intl.message(
      'M',
      name: 'm',
      desc: '',
      args: [],
    );
  }

  /// `S`
  String get s {
    return Intl.message(
      'S',
      name: 's',
      desc: '',
      args: [],
    );
  }

  /// `Price: Low to High`
  String get price_asc {
    return Intl.message(
      'Price: Low to High',
      name: 'price_asc',
      desc: '',
      args: [],
    );
  }

  /// `Price: High to Low`
  String get price_desc {
    return Intl.message(
      'Price: High to Low',
      name: 'price_desc',
      desc: '',
      args: [],
    );
  }

  /// `Apply filter`
  String get apply_filter {
    return Intl.message(
      'Apply filter',
      name: 'apply_filter',
      desc: '',
      args: [],
    );
  }

  /// `Select option`
  String get select_option {
    return Intl.message(
      'Select option',
      name: 'select_option',
      desc: '',
      args: [],
    );
  }

  /// `Choose colors`
  String get choose_colors {
    return Intl.message(
      'Choose colors',
      name: 'choose_colors',
      desc: '',
      args: [],
    );
  }

  /// `Choose sizes`
  String get choose_sizes {
    return Intl.message(
      'Choose sizes',
      name: 'choose_sizes',
      desc: '',
      args: [],
    );
  }

  /// `Available balance`
  String get available_balance {
    return Intl.message(
      'Available balance',
      name: 'available_balance',
      desc: '',
      args: [],
    );
  }

  /// `Select the amount of points`
  String get select_the_amount_of_points {
    return Intl.message(
      'Select the amount of points',
      name: 'select_the_amount_of_points',
      desc: '',
      args: [],
    );
  }

  /// `Select the amount from the wallet`
  String get select_the_amount_from_the_wallet {
    return Intl.message(
      'Select the amount from the wallet',
      name: 'select_the_amount_from_the_wallet',
      desc: '',
      args: [],
    );
  }

  /// `Please select a payment method`
  String get please_select_a_payment_method {
    return Intl.message(
      'Please select a payment method',
      name: 'please_select_a_payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Wallet deduction`
  String get wallet_deduction {
    return Intl.message(
      'Wallet deduction',
      name: 'wallet_deduction',
      desc: '',
      args: [],
    );
  }

  /// `Points deduction`
  String get points_deduction {
    return Intl.message(
      'Points deduction',
      name: 'points_deduction',
      desc: '',
      args: [],
    );
  }

  /// `Gift`
  String get gift {
    return Intl.message(
      'Gift',
      name: 'gift',
      desc: '',
      args: [],
    );
  }

  /// `No content available`
  String get no_content_available {
    return Intl.message(
      'No content available',
      name: 'no_content_available',
      desc: '',
      args: [],
    );
  }

  /// `Max deduction`
  String get max_deduction {
    return Intl.message(
      'Max deduction',
      name: 'max_deduction',
      desc: '',
      args: [],
    );
  }

  /// `Equivalent`
  String get equivalent {
    return Intl.message(
      'Equivalent',
      name: 'equivalent',
      desc: '',
      args: [],
    );
  }

  /// `Points exceed balance`
  String get points_exceed_balance {
    return Intl.message(
      'Points exceed balance',
      name: 'points_exceed_balance',
      desc: '',
      args: [],
    );
  }

  /// `Error exceed max allowed currency`
  String get error_exceed_max_allowed_currency {
    return Intl.message(
      'Error exceed max allowed currency',
      name: 'error_exceed_max_allowed_currency',
      desc: '',
      args: [],
    );
  }

  /// `Error exceed wallet balance`
  String get error_exceed_wallet_balance {
    return Intl.message(
      'Error exceed wallet balance',
      name: 'error_exceed_wallet_balance',
      desc: '',
      args: [],
    );
  }

  /// `Blog details`
  String get blog_details {
    return Intl.message(
      'Blog details',
      name: 'blog_details',
      desc: '',
      args: [],
    );
  }

  /// `Check our this blog`
  String get check_our_this_blog {
    return Intl.message(
      'Check our this blog',
      name: 'check_our_this_blog',
      desc: '',
      args: [],
    );
  }

  /// `Open Original`
  String get open_original {
    return Intl.message(
      'Open Original',
      name: 'open_original',
      desc: '',
      args: [],
    );
  }

  /// `Add comment`
  String get add_comment {
    return Intl.message(
      'Add comment',
      name: 'add_comment',
      desc: '',
      args: [],
    );
  }

  /// `Additional discounts`
  String get additional_discounts {
    return Intl.message(
      'Additional discounts',
      name: 'additional_discounts',
      desc: '',
      args: [],
    );
  }

  /// `Enter address details`
  String get enter_address_details {
    return Intl.message(
      'Enter address details',
      name: 'enter_address_details',
      desc: '',
      args: [],
    );
  }

  /// `Home type`
  String get home_type {
    return Intl.message(
      'Home type',
      name: 'home_type',
      desc: '',
      args: [],
    );
  }

  /// `Enter flat number`
  String get enter_flat_number {
    return Intl.message(
      'Enter flat number',
      name: 'enter_flat_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter villa number`
  String get enter_villa_number {
    return Intl.message(
      'Enter villa number',
      name: 'enter_villa_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter phone`
  String get enter_phone {
    return Intl.message(
      'Enter phone',
      name: 'enter_phone',
      desc: '',
      args: [],
    );
  }

  /// `Please enter address details`
  String get please_enter_address_details {
    return Intl.message(
      'Please enter address details',
      name: 'please_enter_address_details',
      desc: '',
      args: [],
    );
  }

  /// `Please choose complete address`
  String get please_choose_complete_address {
    return Intl.message(
      'Please choose complete address',
      name: 'please_choose_complete_address',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Enter country code`
  String get enter_country_code {
    return Intl.message(
      'Enter country code',
      name: 'enter_country_code',
      desc: '',
      args: [],
    );
  }

  /// `Please enter first name`
  String get please_enter_first_name {
    return Intl.message(
      'Please enter first name',
      name: 'please_enter_first_name',
      desc: '',
      args: [],
    );
  }

  /// `Please enter last name`
  String get please_enter_last_name {
    return Intl.message(
      'Please enter last name',
      name: 'please_enter_last_name',
      desc: '',
      args: [],
    );
  }

  /// `Please enter email`
  String get please_enter_email {
    return Intl.message(
      'Please enter email',
      name: 'please_enter_email',
      desc: '',
      args: [],
    );
  }

  /// `Guest information`
  String get guest_information {
    return Intl.message(
      'Guest information',
      name: 'guest_information',
      desc: '',
      args: [],
    );
  }

  /// `Enter first name`
  String get enter_first_name {
    return Intl.message(
      'Enter first name',
      name: 'enter_first_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter last name`
  String get enter_last_name {
    return Intl.message(
      'Enter last name',
      name: 'enter_last_name',
      desc: '',
      args: [],
    );
  }

  /// `Delivery fee`
  String get delivery_fee {
    return Intl.message(
      'Delivery fee',
      name: 'delivery_fee',
      desc: '',
      args: [],
    );
  }

  /// `Complete Your Profile`
  String get complete_your_profile {
    return Intl.message(
      'Complete Your Profile',
      name: 'complete_your_profile',
      desc: '',
      args: [],
    );
  }

  /// `Please add your phone number in profile`
  String get please_add_your_phone_number_in_profile {
    return Intl.message(
      'Please add your phone number in profile',
      name: 'please_add_your_phone_number_in_profile',
      desc: '',
      args: [],
    );
  }

  /// `Go to profile`
  String get go_to_profile {
    return Intl.message(
      'Go to profile',
      name: 'go_to_profile',
      desc: '',
      args: [],
    );
  }

  /// `Welcome To Nice Style`
  String get welcome_to_nice_style {
    return Intl.message(
      'Welcome To Nice Style',
      name: 'welcome_to_nice_style',
      desc: '',
      args: [],
    );
  }

  /// `Do you really want to clear cart?`
  String get do_you_really_want_to_clear_cart {
    return Intl.message(
      'Do you really want to clear cart?',
      name: 'do_you_really_want_to_clear_cart',
      desc: '',
      args: [],
    );
  }

  /// `Login guest faild`
  String get login_guest_faild {
    return Intl.message(
      'Login guest faild',
      name: 'login_guest_faild',
      desc: '',
      args: [],
    );
  }

  /// `Product description`
  String get product_description {
    return Intl.message(
      'Product description',
      name: 'product_description',
      desc: '',
      args: [],
    );
  }

  /// `Phone missing`
  String get phone_missing_title {
    return Intl.message(
      'Phone missing',
      name: 'phone_missing_title',
      desc: '',
      args: [],
    );
  }

  /// `Please update your phone number in the profile before proceeding.`
  String get phone_missing_message {
    return Intl.message(
      'Please update your phone number in the profile before proceeding.',
      name: 'phone_missing_message',
      desc: '',
      args: [],
    );
  }

  /// `Update profile`
  String get update_profile {
    return Intl.message(
      'Update profile',
      name: 'update_profile',
      desc: '',
      args: [],
    );
  }

  /// `Account verified`
  String get account_verified {
    return Intl.message(
      'Account verified',
      name: 'account_verified',
      desc: '',
      args: [],
    );
  }

  /// `Please verify account`
  String get please_verify_account {
    return Intl.message(
      'Please verify account',
      name: 'please_verify_account',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgot_password {
    return Intl.message(
      'Forgot password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get remember_me {
    return Intl.message(
      'Remember me',
      name: 'remember_me',
      desc: '',
      args: [],
    );
  }

  /// `Back to sign in`
  String get back_to_sign_in {
    return Intl.message(
      'Back to sign in',
      name: 'back_to_sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Sign up for free`
  String get sign_up_for_free {
    return Intl.message(
      'Sign up for free',
      name: 'sign_up_for_free',
      desc: '',
      args: [],
    );
  }

  /// `No worries! Enter your email address and we'll send you a link to reset your password`
  String get reset_password_message {
    return Intl.message(
      'No worries! Enter your email address and we\'ll send you a link to reset your password',
      name: 'reset_password_message',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get forgot_your_password {
    return Intl.message(
      'Forgot your password?',
      name: 'forgot_your_password',
      desc: '',
      args: [],
    );
  }

  /// `Send reset link`
  String get send_reset_link {
    return Intl.message(
      'Send reset link',
      name: 'send_reset_link',
      desc: '',
      args: [],
    );
  }

  /// `OR CONTINUE WITH`
  String get or_continue_with {
    return Intl.message(
      'OR CONTINUE WITH',
      name: 'or_continue_with',
      desc: '',
      args: [],
    );
  }

  /// `Create your account`
  String get create_your_account {
    return Intl.message(
      'Create your account',
      name: 'create_your_account',
      desc: '',
      args: [],
    );
  }

  /// `I agree to the`
  String get i_agree_to_the {
    return Intl.message(
      'I agree to the',
      name: 'i_agree_to_the',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Service`
  String get terms_of_service {
    return Intl.message(
      'Terms of Service',
      name: 'terms_of_service',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get and {
    return Intl.message(
      'and',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `Send me product updates and marketing emails`
  String get send_me_product_updates_and_marketing_emails {
    return Intl.message(
      'Send me product updates and marketing emails',
      name: 'send_me_product_updates_and_marketing_emails',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get already_have_an_account {
    return Intl.message(
      'Already have an account?',
      name: 'already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Subscription`
  String get subscription {
    return Intl.message(
      'Subscription',
      name: 'subscription',
      desc: '',
      args: [],
    );
  }

  /// `Follow to subscribe`
  String get follow_to_subscribe {
    return Intl.message(
      'Follow to subscribe',
      name: 'follow_to_subscribe',
      desc: '',
      args: [],
    );
  }

  /// `Get a premium subscription`
  String get get_a_premium_subscription {
    return Intl.message(
      'Get a premium subscription',
      name: 'get_a_premium_subscription',
      desc: '',
      args: [],
    );
  }

  /// `Discover all our features and build stunning business cards.`
  String get discover_all_our_features_and_build_stunning_business_cards {
    return Intl.message(
      'Discover all our features and build stunning business cards.',
      name: 'discover_all_our_features_and_build_stunning_business_cards',
      desc: '',
      args: [],
    );
  }

  /// `Monthly subscription`
  String get monthly_subscription {
    return Intl.message(
      'Monthly subscription',
      name: 'monthly_subscription',
      desc: '',
      args: [],
    );
  }

  /// `Monthly`
  String get monthly {
    return Intl.message(
      'Monthly',
      name: 'monthly',
      desc: '',
      args: [],
    );
  }

  /// `Annually`
  String get annually {
    return Intl.message(
      'Annually',
      name: 'annually',
      desc: '',
      args: [],
    );
  }

  /// `Annual subscription`
  String get annual_subscription {
    return Intl.message(
      'Annual subscription',
      name: 'annual_subscription',
      desc: '',
      args: [],
    );
  }

  /// `Ideal for personal use`
  String get ideal_for_personal_use {
    return Intl.message(
      'Ideal for personal use',
      name: 'ideal_for_personal_use',
      desc: '',
      args: [],
    );
  }

  /// `What will you get?`
  String get what_will_you_get {
    return Intl.message(
      'What will you get?',
      name: 'what_will_you_get',
      desc: '',
      args: [],
    );
  }

  /// `Create multiple business cards`
  String get create_multiple_business_cards {
    return Intl.message(
      'Create multiple business cards',
      name: 'create_multiple_business_cards',
      desc: '',
      args: [],
    );
  }

  /// `Unlimited templates and designs`
  String get unlimited_templates_and_designs {
    return Intl.message(
      'Unlimited templates and designs',
      name: 'unlimited_templates_and_designs',
      desc: '',
      args: [],
    );
  }

  /// `Real-time card updates`
  String get real_time_card_updates {
    return Intl.message(
      'Real-time card updates',
      name: 'real_time_card_updates',
      desc: '',
      args: [],
    );
  }

  /// `Full color customization`
  String get full_color_customization {
    return Intl.message(
      'Full color customization',
      name: 'full_color_customization',
      desc: '',
      args: [],
    );
  }

  /// `Add custom images and logos`
  String get add_custom_images_and_logos {
    return Intl.message(
      'Add custom images and logos',
      name: 'add_custom_images_and_logos',
      desc: '',
      args: [],
    );
  }

  /// `24/7 dedicated support`
  String get dedicated_support {
    return Intl.message(
      '24/7 dedicated support',
      name: 'dedicated_support',
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
