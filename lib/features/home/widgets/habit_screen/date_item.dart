import 'package:flutter/material.dart';
import 'package:habits_app/core/export/lib_exports.dart';

class DateItem extends StatelessWidget {
  const DateItem({
    super.key,
    required this.day,
    required this.isSelected,
    required this.isToday,
  });

  final DateTime day;
  final bool isSelected;
  final bool isToday;

  @override
  Widget build(BuildContext context) {
    Color textColor = isSelected || isToday
        ? AppColors.white
        : AppColors.getTextPrimaryColor(context);
    BoxDecoration? decoration;

    if (isSelected && !isToday) {
      decoration = BoxDecoration(
        border: Border.all(color: AppColors.primary, width: 2),
        borderRadius: BorderRadius.circular(AppSize.s16),
      );
      textColor = AppColors.primary;
    } else if (isToday) {
      decoration = BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(AppSize.s16),
      );
    }

    return Container(
      alignment: Alignment.center,
      margin: REdgeInsets.symmetric(horizontal: AppPadding.p2),
      padding: REdgeInsets.symmetric(vertical: AppPadding.p2),
      decoration: decoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            day.day.toString(),
            style: getSemiBoldStyle(
              color: textColor,
              fontSize: FontSizeManager.s16,
            ),
          ),
          SizedBox(height: AppSize.s2.h),
          Text(
            ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'][day.weekday - 1],
            style: getRegularStyle(
              color: textColor.withOpacity(0.8),
              fontSize: FontSizeManager.s10,
            ),
          ),
        ],
      ),
    );
  }
}
