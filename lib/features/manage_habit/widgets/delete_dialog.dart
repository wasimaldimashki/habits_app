import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/features/manage_habit/cubit/manage_habit_cubit.dart';
import 'package:habits_app/features/models/habit_model.dart';
import 'package:habits_app/core/export/lib_exports.dart';

void showDeleteDialog(BuildContext context, HabitModel habit) {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: const Text('Delete Habit'),
      content: Text('Are you sure you want to delete "${habit.name}"?'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(ctx).pop(),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            BlocProvider.of<ManageHabitCubit>(context).deleteHabit(habit.id);
            Navigator.of(ctx).pop();
          },
          child: const Text('Delete'),
        ),
      ],
    ),
  );
}
