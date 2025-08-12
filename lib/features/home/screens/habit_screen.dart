import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/features/shared/widgets/floating-action-button/floating_speed_dial.dart';
import 'package:habits_app/features/shared/widgets/floating-action-button/floating_speed_dial_child.dart';

class HabitScreen extends StatelessWidget {
  const HabitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: REdgeInsets.symmetric(horizontal: AppPadding.p24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: AppSize.s50.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Habit App',
                  style: getBoldStyle(
                    color: AppColors.getTextPrimaryColor(context),
                    fontSize: FontSizeManager.s28,
                  ),
                ),
                Text(
                  'August 2025',
                  style: getSemiBoldStyle(
                    color: AppColors.getTextPrimaryColor(context),
                    fontSize: FontSizeManager.s18,
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSize.s30.h),
            // Horizontal date row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDateItem('08', 'Fri', false, context),
                _buildDateItem('09', 'Sat', false, context),
                _buildDateItem('10', 'Sun', false, context),
                _buildDateItem('11', 'Mon', false, context),
                _buildDateItem('12', 'Tue', true, context),
              ],
            ),
            SizedBox(height: AppSize.s40.h),
            // Placeholder for the illustration
            Center(
              child: Column(
                children: [
                  Image.asset(
                    ImageApplication.noHabits,
                    width: 250.w,
                    height: 250.h,
                  ),
                  SizedBox(height: AppSize.s24.h),
                  Text(
                    'No habits added for this day.',
                    style: getSemiBoldStyle(
                      color: AppColors.getTextPrimaryColor(context),
                      fontSize: FontSizeManager.s18,
                    ),
                  ),
                  SizedBox(height: AppSize.s8.h),
                  Text(
                    'Try to add some.',
                    style: getRegularStyle(
                      color: AppColors.getTextSecondaryColor(context),
                      fontSize: FontSizeManager.s16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingSpeedDial(
        openForegroundColor: AppColors.primary.withOpacity(0.9),
        openBackgroundColor: AppColors.accent,
        closedBackgroundColor: AppColors.primary.withOpacity(0.9),
        closedForegroundColor: AppColors.white,
        speedDialChildren: <FloatingSpeedDialChild>[
          FloatingSpeedDialChild(
            child: const Icon(Icons.push_pin_rounded),
            foregroundColor: AppColors.white,
            backgroundColor: AppColors.primary.withOpacity(0.9),
            label: 'Add Habit',
            onPressed: () async {
              context.push(AppRoutes.addHabitScreen);
            },
          ),
          FloatingSpeedDialChild(
            child: const Icon(Icons.settings),
            foregroundColor: AppColors.white,
            backgroundColor: AppColors.primary.withOpacity(0.9),
            label: 'Manage Habits',
            onPressed: () async {
              // TODO:: Manage habit logic
            },
          ),
        ],
        child: const Icon(Icons.list),
      ),
    );
  }
}

Widget _buildDateItem(
    String day, String dayName, bool isSelected, BuildContext context) {
  return Container(
    width: AppSize.s50.w,
    height: AppSize.s75.h,
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
          day,
          style: getSemiBoldStyle(
            color: isSelected
                ? AppColors.white
                : AppColors.getTextPrimaryColor(context),
            fontSize: FontSizeManager.s22,
          ),
        ),
        SizedBox(height: AppSize.s4.h),
        Text(
          dayName,
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
