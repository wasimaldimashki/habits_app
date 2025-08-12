import 'package:flutter/material.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/features/home/widgets/habit_screen/date_item.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarHorizontalWidget extends StatelessWidget {
  final DateTime selectedDate;
  final Function(DateTime) onDaySelected;

  const CalendarHorizontalWidget({
    super.key,
    required this.selectedDate,
    required this.onDaySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s100.h,
      child: TableCalendar(
        firstDay: DateTime.now().subtract(const Duration(days: 365)),
        lastDay: DateTime.now().add(const Duration(days: 365)),
        focusedDay: selectedDate,
        selectedDayPredicate: (day) => isSameDay(selectedDate, day),
        onDaySelected: (date, focusedDay) => onDaySelected(date),
        calendarFormat: CalendarFormat.week,
        startingDayOfWeek: StartingDayOfWeek.monday,
        headerVisible: false,
        daysOfWeekVisible: false,
        calendarBuilders: CalendarBuilders(
          defaultBuilder: (context, day, focusedDay) {
            return DateItem(
              day: day,
              isSelected: false,
              isToday: isSameDay(day, DateTime.now()),
            );
          },
          selectedBuilder: (context, day, focusedDay) {
            return DateItem(
              day: day,
              isSelected: true,
              isToday: isSameDay(day, DateTime.now()),
            );
          },
          todayBuilder: (context, day, focusedDay) {
            return DateItem(
              day: day,
              isSelected: isSameDay(day, selectedDate),
              isToday: true,
            );
          },
        ),
      ),
    );
  }
}
