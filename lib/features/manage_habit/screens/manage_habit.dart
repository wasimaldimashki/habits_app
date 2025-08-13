import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/core/services/service_locator.dart';
import 'package:habits_app/features/manage_habit/cubit/manage_habit_cubit.dart';
import 'package:habits_app/features/manage_habit/widgets/edit_habit_sheet.dart';
import 'package:habits_app/features/manage_habit/widgets/delete_dialog.dart';
import 'package:habits_app/features/manage_habit/widgets/habit_list_item.dart';

class ManageHabitScreen extends StatelessWidget {
  const ManageHabitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ManageHabitCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Manage Habits',
          ),
        ),
        body: BlocConsumer<ManageHabitCubit, ManageHabitState>(
          listener: (context, state) {
            if (state is ManageHabitError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message)),
              );
            }
          },
          builder: (context, state) {
            if (state is ManageHabitLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ManageHabitLoaded) {
              if (state.habits.isEmpty) {
                return Center(
                  child: Text(
                    'No habits to manage.',
                    style: getRegularStyle(
                      color: AppColors.getTextSecondaryColor(context),
                      fontSize: FontSizeManager.s18,
                    ),
                  ),
                );
              }
              return ListView.builder(
                padding: REdgeInsets.all(AppPadding.p16),
                itemCount: state.habits.length,
                itemBuilder: (context, index) {
                  final habit = state.habits[index];
                  return HabitListItem(
                    habit: habit,
                    onDelete: () => showDeleteDialog(context, habit),
                    onEdit: () => showEditHabitSheet(context, habit),
                  );
                },
              );
            } else if (state is ManageHabitError) {
              return Center(child: Text(state.message));
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
