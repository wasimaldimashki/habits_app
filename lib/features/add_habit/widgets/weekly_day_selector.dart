import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/features/add_habit/cubit/add_habit_cubit.dart';

class WeeklyDaySelector extends StatelessWidget {
  const WeeklyDaySelector({
    super.key,
    required this.state,
    required this.cubit,
  });
  final AddHabitState state;
  final AddHabitCubit cubit;
  @override
  Widget build(BuildContext context) {
    final List<String> days = [
      S.of(context).mon,
      S.of(context).tue,
      S.of(context).wed,
      S.of(context).thu,
      S.of(context).fri,
      S.of(context).sat,
      S.of(context).sun,
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Days',
          style: getSemiBoldStyle(
            color: AppColors.getTextPrimaryColor(context),
            fontSize: FontSizeManager.s16,
          ),
        ),
        SizedBox(height: AppSize.s12.h),
        Wrap(
          spacing: AppSize.s8.w,
          runSpacing: AppSize.s8.h,
          children: List.generate(7, (index) {
            final isSelected = state.selectedDays.contains(index + 1);
            return OutlinedButton(
              onPressed: () => cubit.toggleSelectedDay(index + 1),
              style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.resolveWith<Color>((states) {
                  return isSelected
                      ? AppColors.primary
                      : AppColors.getSurfaceColor(context);
                }),
                side: WidgetStatePropertyAll(
                  BorderSide(
                    color: isSelected
                        ? AppColors.primary
                        : AppColors.getBorderColor(context),
                  ),
                ),
              ),
              child: Text(
                days[index],
                style: getMediumStyle(
                  color: isSelected
                      ? AppColors.white
                      : AppColors.getTextPrimaryColor(context),
                  fontSize: FontSizeManager.s14,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
