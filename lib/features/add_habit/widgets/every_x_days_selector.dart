import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/features/add_habit/cubit/add_habit_cubit.dart';

class EveryXDaysSelector extends StatelessWidget {
  const EveryXDaysSelector({
    super.key,
    required this.state,
    required this.cubit,
  });
  final AddHabitState state;
  final AddHabitCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Interval Days',
          style: getSemiBoldStyle(
            color: AppColors.getTextPrimaryColor(context),
            fontSize: FontSizeManager.s16,
          ),
        ),
        SizedBox(height: AppSize.s12.h),
        TextFormField(
          initialValue: state.everyXDaysInterval.toString(),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: 'e.g., 3',
          ),
          onChanged: (value) {
            if (value.isNotEmpty) {
              cubit.updateEveryXDaysInterval(int.tryParse(value) ?? 1);
            }
          },
        ),
      ],
    );
  }
}
