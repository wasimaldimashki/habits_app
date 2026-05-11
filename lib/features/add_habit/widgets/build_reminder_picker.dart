import 'package:flutter/material.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/core/functions/format_reminder_time.dart';
import 'package:habits_app/features/add_habit/cubit/add_habit_cubit.dart';

class BuildReminderPicker extends StatelessWidget {
  const BuildReminderPicker(
      {super.key, required this.cubit, required this.state});
  final AddHabitCubit cubit;
  final AddHabitState state;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        FocusScope.of(context).unfocus();
        final time = await showTimePicker(
          context: context,
          initialTime: state.reminderTime != null
              ? TimeOfDay(
                  hour: int.parse(state.reminderTime!.split(':')[0]),
                  minute: int.parse(state.reminderTime!.split(':')[1]),
                )
              : TimeOfDay.now(),
        );
        if (time != null) {
          final formattedTime =
              '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
          cubit.updateReminderTime(formattedTime);
        }
      },
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        padding: REdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: AppColors.getBorderColor(context)),
          color: AppColors.getSurfaceColor(context),
        ),
        child: Row(
          children: [
            Icon(
              Icons.access_time,
              color: state.reminderTime != null
                  ? AppColors.primary
                  : AppColors.getTextSecondaryColor(context),
            ),
            SizedBox(width: 12.w),
            Text(
              state.reminderTime != null
                  ? formatReminderTime(context, state.reminderTime!)
                  : S.of(context).select_a_time,
              style: getRegularStyle(
                color: state.reminderTime != null
                    ? AppColors.getTextPrimaryColor(context)
                    : AppColors.getTextSecondaryColor(context),
                fontSize: FontSizeManager.s16,
              ),
            ),
            const Spacer(),
            if (state.reminderTime != null)
              IconButton(
                onPressed: () => cubit.updateReminderTime(null),
                icon: const Icon(Icons.close, size: 20),
              ),
          ],
        ),
      ),
    );
  }
}
