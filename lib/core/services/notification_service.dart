import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'dart:developer' as dev;

class NotificationPermissionException implements Exception {
  const NotificationPermissionException(this.message);
  final String message;
  @override
  String toString() => message;
}

class NotificationService {
  final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static const _channelId = 'habit_reminders_channel';
  static const _channelName = 'Habit Reminders';

  /// Converts a habit UUID into a safe, positive Android notification ID.
  ///
  /// Android notification IDs are Java `int` (32-bit signed). Dart's
  /// `String.hashCode` can be negative or exceed 32-bit range on 64-bit
  /// devices. Masking with 0x7FFFFFFF clears the sign bit so the result is
  /// always a positive 31-bit integer that fits safely in Java's int range.
  static int notificationIdForHabit(String habitId) =>
      habitId.hashCode & 0x7FFFFFFF;

  Future<void> init() async {
    try {
      // Step 1: Load timezone DB and set the device's IANA timezone.
      tz.initializeTimeZones();
      try {
        final timezoneInfo = await FlutterTimezone.getLocalTimezone();
        tz.setLocalLocation(tz.getLocation(timezoneInfo.identifier));
        dev.log('Timezone set to: ${timezoneInfo.identifier}');
      } catch (e) {
        dev.log('Failed to detect device timezone, falling back to UTC: $e');
      }

      const AndroidInitializationSettings initializationSettingsAndroid =
          AndroidInitializationSettings('logo_app');

      const DarwinInitializationSettings initializationSettingsIOS =
          DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
      );

      await _notificationsPlugin.initialize(
        settings: const InitializationSettings(
          android: initializationSettingsAndroid,
          iOS: initializationSettingsIOS,
        ),
        onDidReceiveNotificationResponse: (details) {
          dev.log('Notification tapped: ${details.payload}');
        },
      );

      final androidPlugin = _notificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>();

      if (androidPlugin != null) {
        // Step 2: Create the notification channel explicitly.
        // Required on Android 8+ — channels must exist before any
        // notification is scheduled or it will be silently dropped.
        await androidPlugin.createNotificationChannel(
          const AndroidNotificationChannel(
            _channelId,
            _channelName,
            description: 'Daily reminders for your habits',
            importance: Importance.max,
            playSound: true,
            enableVibration: true,
          ),
        );

        // Step 3: Request POST_NOTIFICATIONS permission (Android 13+).
        // If denied, scheduled notifications are silently dropped by the OS.
        await androidPlugin.requestNotificationsPermission();

        // Step 4: Request exact alarm permission (Android 12+).
        // On Android 13+ with USE_EXACT_ALARM in the manifest this is
        // auto-granted; on Android 12 it opens the system settings page.
        await androidPlugin.requestExactAlarmsPermission();
      }

      dev.log('NotificationService initialized successfully');
    } catch (e) {
      dev.log('Error initializing NotificationService: $e');
    }
  }

  /// Returns true if the app has the POST_NOTIFICATIONS permission.
  Future<bool> areNotificationsEnabled() async {
    final androidPlugin = _notificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();
    if (androidPlugin == null) return true;
    return await androidPlugin.areNotificationsEnabled() ?? false;
  }

  /// Returns true if the app can schedule exact alarms on this device.
  Future<bool> canScheduleExactAlarms() async {
    final androidPlugin = _notificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();
    if (androidPlugin == null) return true;
    return await androidPlugin.canScheduleExactNotifications() ?? false;
  }

  Future<void> scheduleHabitReminder({
    required int id,
    required String title,
    required String body,
    required int hour,
    required int minute,
  }) async {
    final androidPlugin = _notificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();

    // Guard 1: POST_NOTIFICATIONS permission — without this the notification
    // is silently swallowed by the OS even if scheduling succeeds.
    if (androidPlugin != null) {
      final notificationsEnabled =
          await androidPlugin.areNotificationsEnabled() ?? false;
      if (!notificationsEnabled) {
        await androidPlugin.requestNotificationsPermission();
        throw const NotificationPermissionException(
          'Notification permission not granted. '
          'Please allow notifications for this app in Settings.',
        );
      }
    }

    // Guard 2: Exact alarm permission — required on Android 12+.
    final canSchedule = await canScheduleExactAlarms();
    if (!canSchedule) {
      await androidPlugin?.requestExactAlarmsPermission();
      throw const NotificationPermissionException(
        'Exact alarm permission not granted. '
        'Please enable "Alarms & reminders" for this app in Settings.',
      );
    }

    final now = tz.TZDateTime.now(tz.local);
    var scheduledDate = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      hour,
      minute,
    );

    // If the chosen time has already passed today, schedule for tomorrow.
    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }

    await _notificationsPlugin.zonedSchedule(
      id: id,
      title: title,
      body: body,
      scheduledDate: scheduledDate,
      notificationDetails: const NotificationDetails(
        android: AndroidNotificationDetails(
          _channelId,
          _channelName,
          channelDescription: 'Daily reminders for your habits',
          importance: Importance.max,
          priority: Priority.high,
          playSound: true,
        ),
        iOS: DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        ),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      matchDateTimeComponents: DateTimeComponents.time,
    );
    dev.log(
        'Notification $id scheduled for $hour:${minute.toString().padLeft(2, '0')} '
        '(first fire: $scheduledDate)');
  }

  Future<void> cancelNotification(int id) async {
    await _notificationsPlugin.cancel(id: id);
    dev.log('Cancelled notification $id');
  }

  Future<void> cancelAllNotifications() async {
    await _notificationsPlugin.cancelAll();
    dev.log('Cancelled all notifications');
  }
}
