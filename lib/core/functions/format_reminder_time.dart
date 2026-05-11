import 'package:habits_app/core/export/lib_exports.dart';

/// Formats the stored "HH:mm" string using the device's 12h/24h preference.
String formatReminderTime(BuildContext context, String time) {
  final parts = time.split(':');
  final tod = TimeOfDay(
    hour: int.parse(parts[0]),
    minute: int.parse(parts[1]),
  );
  return tod.format(context);
}
