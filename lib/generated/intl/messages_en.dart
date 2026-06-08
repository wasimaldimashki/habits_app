// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(name) => "Habit \"${name}\" deleted";

  static String m1(name) => "It\'s time to work on your habit: ${name}";

  static String m2(count) => "Every ${count} days";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_us": MessageLookupByLibrary.simpleMessage("About Us"),
        "add_habit": MessageLookupByLibrary.simpleMessage("Add Habit"),
        "app_name": MessageLookupByLibrary.simpleMessage("Habit App"),
        "arabic": MessageLookupByLibrary.simpleMessage("Arabic"),
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "best_streak": MessageLookupByLibrary.simpleMessage("Best Streak"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "change_language":
            MessageLookupByLibrary.simpleMessage("Change Language"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "completed_last_30": MessageLookupByLibrary.simpleMessage(
            "Days Completed (Last 30 Days)"),
        "completed_last_7": MessageLookupByLibrary.simpleMessage(
            "Days Completed (Last 7 Days)"),
        "completion_rate":
            MessageLookupByLibrary.simpleMessage("Completion Rate"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirm_reset": MessageLookupByLibrary.simpleMessage("Confirm Reset"),
        "continue_btn": MessageLookupByLibrary.simpleMessage("Continue"),
        "create_new_habit":
            MessageLookupByLibrary.simpleMessage("Create New Habit"),
        "current_streak":
            MessageLookupByLibrary.simpleMessage("Current Streak"),
        "daily": MessageLookupByLibrary.simpleMessage("Daily"),
        "days": MessageLookupByLibrary.simpleMessage("days"),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "delete_habit_confirm": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this habit?"),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "description_hint": MessageLookupByLibrary.simpleMessage(
            "Habit Description (Optional)"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "english": MessageLookupByLibrary.simpleMessage("English"),
        "enter_name_hint":
            MessageLookupByLibrary.simpleMessage("Enter your name.."),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "every_x_days": MessageLookupByLibrary.simpleMessage("Every X Days"),
        "female": MessageLookupByLibrary.simpleMessage("Female"),
        "fri": MessageLookupByLibrary.simpleMessage("Fri"),
        "gender": MessageLookupByLibrary.simpleMessage("Gender"),
        "get_started": MessageLookupByLibrary.simpleMessage("Get Started"),
        "habit_deleted": m0,
        "habit_name": MessageLookupByLibrary.simpleMessage("Habit Name"),
        "habit_name_hint": MessageLookupByLibrary.simpleMessage("Habit Name"),
        "habit_reminder_body": m1,
        "habit_reminder_title":
            MessageLookupByLibrary.simpleMessage("Habit Reminder"),
        "habits": MessageLookupByLibrary.simpleMessage("Habits"),
        "habits_completed_today":
            MessageLookupByLibrary.simpleMessage("Habits Completed Today"),
        "interval_days": m2,
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "lets_get_you_set_up":
            MessageLookupByLibrary.simpleMessage("Let\'s get you set up."),
        "loading": MessageLookupByLibrary.simpleMessage("Loading"),
        "male": MessageLookupByLibrary.simpleMessage("Male"),
        "manage_habits": MessageLookupByLibrary.simpleMessage("Manage Habits"),
        "mon": MessageLookupByLibrary.simpleMessage("Mon"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "no_data": MessageLookupByLibrary.simpleMessage("No Data"),
        "no_habits_added":
            MessageLookupByLibrary.simpleMessage("No Habits Added"),
        "no_habits_to_manage":
            MessageLookupByLibrary.simpleMessage("No habits to manage."),
        "no_habits_yet": MessageLookupByLibrary.simpleMessage("No habits yet!"),
        "notification_permission_warning": MessageLookupByLibrary.simpleMessage(
            "Habit saved, but the reminder won\'t fire until you enable \"Alarms & reminders\" for this app in Settings."),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "onboarding_desc_1": MessageLookupByLibrary.simpleMessage(
            "Start building positive habits that will transform your life one day at a time."),
        "onboarding_desc_2": MessageLookupByLibrary.simpleMessage(
            "Monitor your daily progress and see how far you\'ve come with detailed statistics."),
        "onboarding_desc_3": MessageLookupByLibrary.simpleMessage(
            "Stay consistent and achieve your goals with reminders and streak tracking."),
        "onboarding_title_1":
            MessageLookupByLibrary.simpleMessage("Build Good Habits"),
        "onboarding_title_2":
            MessageLookupByLibrary.simpleMessage("Track Your Progress"),
        "onboarding_title_3":
            MessageLookupByLibrary.simpleMessage("Achieve Your Goals"),
        "overview": MessageLookupByLibrary.simpleMessage("Overview"),
        "page_unavailable": MessageLookupByLibrary.simpleMessage(
            "This page is currently unavailable."),
        "pick_color": MessageLookupByLibrary.simpleMessage("Pick Color"),
        "pick_icon": MessageLookupByLibrary.simpleMessage("Pick Icon"),
        "please_enter_your_name":
            MessageLookupByLibrary.simpleMessage("Please enter your name"),
        "privacy_policy":
            MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "privacy_policy_intro": MessageLookupByLibrary.simpleMessage(
            "Habit App (\"the App\") is a habit-tracking application developed by Wasim Aldiamshki. This Privacy Policy explains what information the App handles and how it is used. The App is designed to work primarily on your device and does not require an online account."),
        "privacy_policy_last_updated":
            MessageLookupByLibrary.simpleMessage("Last updated: May 20, 2026"),
        "privacy_policy_s1_body": MessageLookupByLibrary.simpleMessage(
            "The App stores the following information locally on your device:\n\n• Profile data: display name and gender you provide during setup.\n• Habit data: habit names, optional descriptions, recurrence settings, completion history, colors, icons, and optional reminder times.\n• App preferences: theme (light/dark), language, and whether onboarding has been completed.\n\nWe do not collect your email address, phone number, password, or payment information. We do not operate user accounts on external servers."),
        "privacy_policy_s1_title":
            MessageLookupByLibrary.simpleMessage("1. Information We Collect"),
        "privacy_policy_s2_body": MessageLookupByLibrary.simpleMessage(
            "Your information is used only to provide App features, including:\n\n• Displaying your profile and habits.\n• Tracking completion and calculating statistics and streaks.\n• Scheduling optional local reminder notifications.\n• Remembering your language and theme preferences."),
        "privacy_policy_s2_title": MessageLookupByLibrary.simpleMessage(
            "2. How We Use Your Information"),
        "privacy_policy_s3_body": MessageLookupByLibrary.simpleMessage(
            "All profile and habit data is stored locally on your device. Theme and language preferences are also stored locally. We do not upload your personal data to our own servers. Data may be included in your device\'s operating-system backup if you enable device backup."),
        "privacy_policy_s3_title":
            MessageLookupByLibrary.simpleMessage("3. Data Storage"),
        "privacy_policy_s4_body": MessageLookupByLibrary.simpleMessage(
            "Depending on the features you use, the App may request:\n\n• Notifications and exact alarms: to deliver optional habit reminders at scheduled times.\n• Boot completed: to reschedule reminders after your device restarts.\n• Internet access: to load default profile avatars and download fonts.\n\nBiometric permissions may appear in the system manifest, but biometric authentication is not currently used in the App."),
        "privacy_policy_s4_title":
            MessageLookupByLibrary.simpleMessage("4. Permissions"),
        "privacy_policy_s5_body": MessageLookupByLibrary.simpleMessage(
            "The App may connect to third-party services only in limited cases:\n\n• avatar.iran.liara.run: provides default profile images based on gender.\n• Google Fonts: typography may be downloaded from Google servers.\n• Social links in About Us: opened only when you choose to tap them.\n\nThe App does not include analytics, advertising, or crash-reporting SDKs."),
        "privacy_policy_s5_title":
            MessageLookupByLibrary.simpleMessage("5. Third-Party Services"),
        "privacy_policy_s6_body": MessageLookupByLibrary.simpleMessage(
            "We do not sell, rent, or trade your personal information. Your data is not shared with third parties except for the limited third-party services described above, and only when needed for those features to work."),
        "privacy_policy_s6_title":
            MessageLookupByLibrary.simpleMessage("6. Data Sharing"),
        "privacy_policy_s7_body": MessageLookupByLibrary.simpleMessage(
            "You can delete all App data at any time from Profile > Reset App Data. Uninstalling the App from your device also removes locally stored data, unless your device backup restores it."),
        "privacy_policy_s7_title":
            MessageLookupByLibrary.simpleMessage("7. Data Deletion"),
        "privacy_policy_s8_body": MessageLookupByLibrary.simpleMessage(
            "The App is not directed at children under 13 and does not knowingly collect personal identifiers from children. We may update this Privacy Policy from time to time. When we do, we will revise the \"Last updated\" date at the top of this page."),
        "privacy_policy_s8_title": MessageLookupByLibrary.simpleMessage(
            "8. Children\'s Privacy & Policy Changes"),
        "privacy_policy_s9_body": MessageLookupByLibrary.simpleMessage(
            "If you have questions about this Privacy Policy, contact the developer through the social links or WhatsApp number shown on the About Us page."),
        "privacy_policy_s9_title":
            MessageLookupByLibrary.simpleMessage("9. Contact Us"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "profile_updated_successfully": MessageLookupByLibrary.simpleMessage(
            "Profile updated successfully!"),
        "reminder_time": MessageLookupByLibrary.simpleMessage("Reminder Time"),
        "repeat_days": MessageLookupByLibrary.simpleMessage("Repeat Days"),
        "reset_app_data":
            MessageLookupByLibrary.simpleMessage("Reset App Data"),
        "reset_confirm_message": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to reset all app data? This action cannot be undone."),
        "sat": MessageLookupByLibrary.simpleMessage("Sat"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "select_a_time": MessageLookupByLibrary.simpleMessage("Select a time"),
        "select_days": MessageLookupByLibrary.simpleMessage("Select days"),
        "select_interval":
            MessageLookupByLibrary.simpleMessage("Select interval"),
        "select_your_gender":
            MessageLookupByLibrary.simpleMessage("Select your Gender"),
        "skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "statistics": MessageLookupByLibrary.simpleMessage("Statistics"),
        "streak": MessageLookupByLibrary.simpleMessage("Streak"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "success": MessageLookupByLibrary.simpleMessage("Success"),
        "sun": MessageLookupByLibrary.simpleMessage("Sun"),
        "thu": MessageLookupByLibrary.simpleMessage("Thu"),
        "total_habits": MessageLookupByLibrary.simpleMessage("Total Habits"),
        "try_to_add_some":
            MessageLookupByLibrary.simpleMessage("Try to add some"),
        "tue": MessageLookupByLibrary.simpleMessage("Tue"),
        "undo": MessageLookupByLibrary.simpleMessage("Undo"),
        "unknown_page": MessageLookupByLibrary.simpleMessage("Unknown Page"),
        "update_profile":
            MessageLookupByLibrary.simpleMessage("Update Profile"),
        "update_profile_btn":
            MessageLookupByLibrary.simpleMessage("Update Profile"),
        "update_user_profile":
            MessageLookupByLibrary.simpleMessage("Update User Profile"),
        "warning": MessageLookupByLibrary.simpleMessage("Warning"),
        "wed": MessageLookupByLibrary.simpleMessage("Wed"),
        "weekly": MessageLookupByLibrary.simpleMessage("Weekly"),
        "welcome_to_habit_app":
            MessageLookupByLibrary.simpleMessage("Welcome to Habit App!"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes")
      };
}
