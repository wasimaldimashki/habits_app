import 'package:flutter/material.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/features/home/widgets/habit_screen/date_item.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatelessWidget {
  final DateTime selectedDate;
  final Function(DateTime) onDaySelected;
  final VoidCallback onToggleFormat;
  final CalendarFormat calendarFormat;
  final Set<DateTime> markedDates;

  const CalendarWidget({
    super.key,
    required this.selectedDate,
    required this.onDaySelected,
    required this.onToggleFormat,
    required this.calendarFormat,
    required this.markedDates,
  });

  bool _hasHabitOn(DateTime d) {
    final dateOnly = DateTime(d.year, d.month, d.day);
    return markedDates.contains(dateOnly);
  }

  @override
  Widget build(BuildContext context) {
    final double height =
        calendarFormat == CalendarFormat.week ? AppSize.s100.h : AppSize.s340.h;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: onToggleFormat,
              icon: Icon(
                calendarFormat == CalendarFormat.week
                    ? Icons.expand_more
                    : Icons.expand_less,
                color: AppColors.getTextPrimaryColor(context),
              ),
            ),
          ],
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          height: height,
          child: TableCalendar(
            firstDay: DateTime.now().subtract(const Duration(days: 365)),
            lastDay: DateTime.now().add(const Duration(days: 365)),
            focusedDay: selectedDate,
            selectedDayPredicate: (day) => isSameDay(selectedDate, day),
            onDaySelected: (date, focusedDay) => onDaySelected(date),
            calendarFormat: calendarFormat,
            availableCalendarFormats: const {
              CalendarFormat.week: 'Week',
              CalendarFormat.month: 'Month',
            },
            startingDayOfWeek: StartingDayOfWeek.monday,
            headerVisible: false,
            daysOfWeekVisible: false,
            calendarBuilders: CalendarBuilders(
              defaultBuilder: (context, day, focusedDay) {
                return DateItem(
                  day: day,
                  isSelected: false,
                  isToday: isSameDay(day, DateTime.now()),
                  hasHabit: _hasHabitOn(day),
                );
              },
              selectedBuilder: (context, day, focusedDay) {
                return DateItem(
                  day: day,
                  isSelected: true,
                  isToday: isSameDay(day, DateTime.now()),
                  hasHabit: _hasHabitOn(day),
                );
              },
              todayBuilder: (context, day, focusedDay) {
                return DateItem(
                  day: day,
                  isSelected: isSameDay(day, selectedDate),
                  isToday: true,
                  hasHabit: _hasHabitOn(day),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
