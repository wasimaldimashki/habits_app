import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/features/add_habit/cubit/add_habit_cubit.dart';
import 'package:habits_app/features/models/habit_model.dart';

class RecurrenceButton extends StatelessWidget {
  const RecurrenceButton({
    super.key,
    required this.text,
    required this.type,
    required this.selectedType,
    required this.cubit,
  });
  final String text;
  final HabitRecurrenceType type;
  final HabitRecurrenceType selectedType;
  final AddHabitCubit cubit;

  @override
  Widget build(BuildContext context) {
    final isSelected = type == selectedType;
    return OutlinedButton(
      onPressed: () => cubit.updateRecurrenceType(type),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
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
        text,
        style: getMediumStyle(
          color: isSelected
              ? AppColors.white
              : AppColors.getTextPrimaryColor(context),
          fontSize: FontSizeManager.s16,
        ),
      ),
    );
  }
}
