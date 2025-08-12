import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/features/shared/widgets/floating-action-button/floating_speed_dial.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/features/home/cubits/habit_screen_cubit/habit_screen_cubit.dart';
import 'package:habits_app/features/shared/widgets/floating-action-button/floating_speed_dial_child.dart';

class FloatBtnWidget extends StatelessWidget {
  const FloatBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingSpeedDial(
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
            final result = await context.push(AppRoutes.addHabitScreen);
            if (result == true) {
              // ignore: use_build_context_synchronously
              BlocProvider.of<HabitScreenCubit>(context).loadAllHabits();
            }
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
    );
  }
}
