import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/features/add_habit/cubit/add_habit_cubit.dart';
import 'package:habits_app/features/add_habit/widgets/recurrence_button.dart';
import 'package:habits_app/features/models/habit_model.dart';

class RecurrenceTypeSelector extends StatelessWidget {
  const RecurrenceTypeSelector(
      {super.key, required this.state, required this.cubit});
  final AddHabitState state;
  final AddHabitCubit cubit;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecurrenceButton(
            text: 'Daily',
            type: HabitRecurrenceType.daily,
            selectedType: state.recurrenceType,
            cubit: cubit,
          ),
          SizedBox(width: AppSize.s8.w),
          RecurrenceButton(
            text: 'Weekly',
            type: HabitRecurrenceType.weekly,
            selectedType: state.recurrenceType,
            cubit: cubit,
          ),
          SizedBox(width: AppSize.s8.w),
          RecurrenceButton(
            text: 'Every X Days',
            type: HabitRecurrenceType.everyXDays,
            selectedType: state.recurrenceType,
            cubit: cubit,
          ),
        ],
      ),
    );
  }
}
