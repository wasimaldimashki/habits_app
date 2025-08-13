import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:habits_app/core/export/lib_exports.dart';

class DateItem extends StatelessWidget {
  const DateItem({
    super.key,
    required this.day,
    required this.isSelected,
    required this.isToday,
    this.hasHabit = false,
  });

  final DateTime day;
  final bool isSelected;
  final bool isToday;
  final bool hasHabit;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxH = (constraints.maxHeight.isFinite && constraints.maxHeight > 0)
          ? constraints.maxHeight
          : 80.0;
      final dayFontSize = math.max(10.0, math.min(20.0, maxH * 0.32));
      final weekdayFontSize = math.max(8.0, math.min(12.0, maxH * 0.16));
      final dotSize = math.max(4.0, math.min(8.0, maxH * 0.08));
      final horizontalPadding =
          math.max(4.0, math.min(10.0, constraints.maxWidth * 0.05));
      Color textColor = isSelected || isToday
          ? AppColors.white
          : AppColors.getTextPrimaryColor(context);
      BoxDecoration? decoration;
      if (isSelected && !isToday) {
        decoration = BoxDecoration(
          border: Border.all(color: AppColors.primary, width: 2),
          borderRadius: BorderRadius.circular(AppSize.s12),
        );
        textColor = AppColors.primary;
      } else if (isToday) {
        decoration = BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(AppSize.s12),
        );
      }
      final availableHeight = maxH;
      return Container(
        alignment: Alignment.center,
        margin: REdgeInsets.symmetric(horizontal: AppPadding.p2),
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        decoration: decoration,
        child: SizedBox(
          height: availableHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  day.day.toString(),
                  style: getSemiBoldStyle(
                    color: textColor,
                    fontSize: dayFontSize,
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  [
                    'Mon',
                    'Tue',
                    'Wed',
                    'Thu',
                    'Fri',
                    'Sat',
                    'Sun'
                  ][day.weekday - 1],
                  style: getRegularStyle(
                    color: textColor.withOpacity(0.8),
                    fontSize: weekdayFontSize,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (hasHabit)
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: dotSize,
                    height: dotSize,
                    decoration: BoxDecoration(
                      color: (isSelected || isToday)
                          ? AppColors.warningColor
                          : AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
            ],
          ),
        ),
      );
    });
  }
}
