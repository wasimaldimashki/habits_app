import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habits_app/core/export/lib_exports.dart';
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
            return _buildDateItem(context, day, false);
          },
          todayBuilder: (context, day, focusedDay) {
            return _buildDateItem(context, day, isSameDay(day, DateTime.now()));
          },
          selectedBuilder: (context, day, focusedDay) {
            return _buildDateItem(context, day, true);
          },
        ),
      ),
    );
  }

  Widget _buildDateItem(BuildContext context, DateTime day, bool isSelected) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: AppPadding.p2),
      decoration: isSelected
          ? BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(AppSize.s16),
            )
          : null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day.day.toString(),
            style: getSemiBoldStyle(
              color: isSelected
                  ? AppColors.white
                  : AppColors.getTextPrimaryColor(context),
              fontSize: FontSizeManager.s16,
            ),
          ),
          SizedBox(height: AppSize.s4.h),
          Text(
            ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'][day.weekday - 1],
            style: getRegularStyle(
              color: isSelected
                  ? AppColors.white
                  : AppColors.getTextSecondaryColor(context),
              fontSize: FontSizeManager.s14,
            ),
          ),
        ],
      ),
    );
  }
}
