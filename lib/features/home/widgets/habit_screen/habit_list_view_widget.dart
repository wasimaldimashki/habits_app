import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/features/home/cubits/habit_screen_cubit/habit_screen_cubit.dart';
import 'package:habits_app/features/models/habit_model.dart';

class HabitListViewWidget extends StatelessWidget {
  final List<HabitModel> habits;
  final Function(int, int) onReorder;
  final Function(HabitModel) onToggleCompletion;
  final Function(String) onDelete;

  const HabitListViewWidget({
    super.key,
    required this.habits,
    required this.onReorder,
    required this.onToggleCompletion,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HabitScreenCubit>(context);
    final selectedDate = cubit.state.selectedDate;

    return ReorderableListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      onReorder: onReorder,
      children: habits.map((habit) {
        final isCompleted = habit.isCompletedForDate(selectedDate);
        return Dismissible(
          key: ValueKey(habit.id),
          direction: DismissDirection.endToStart,
          confirmDismiss: (direction) async {
            return await showDialog<bool>(
              context: context,
              builder: (BuildContext dialogContext) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s16),
                  ),
                  title: Text(
                    S.of(context).confirm,
                    style: getSemiBoldStyle(
                      color: AppColors.getTextPrimaryColor(context),
                      fontSize: FontSizeManager.s18,
                    ),
                  ),
                  content: Text(
                    S.of(context).delete_habit_confirm,
                    style: getRegularStyle(
                      color: AppColors.getTextSecondaryColor(context),
                      fontSize: FontSizeManager.s14,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(dialogContext).pop(false),
                      child: Text(
                        S.of(context).cancel,
                        style: getMediumStyle(
                          color: AppColors.getTextSecondaryColor(context),
                          fontSize: FontSizeManager.s14,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(dialogContext).pop(true),
                      child: Text(
                        S.of(context).delete,
                        style: getMediumStyle(
                          color: AppColors.errorColor,
                          fontSize: FontSizeManager.s14,
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
          background: Container(
            color: AppColors.errorColor,
            alignment: Alignment.centerRight,
            padding: REdgeInsets.symmetric(horizontal: AppPadding.p20),
            child: const Icon(Icons.delete, color: Colors.white),
          ),
          onDismissed: (direction) {
            onDelete(habit.id);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(S.of(context).habit_deleted(habit.name)),
                duration: const Duration(seconds: 3),
                action: SnackBarAction(
                  label: S.of(context).undo,
                  onPressed: () {
                    cubit.undoDeleteHabit(habit);
                  },
                ),
              ),
            );
          },
          child: Card(
            margin: REdgeInsets.only(bottom: AppPadding.p12),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s16),
            ),
            child: ListTile(
              contentPadding: REdgeInsets.all(AppPadding.p16),
              leading: const Icon(Icons.drag_handle),
              title: Text(
                habit.name,
                style: getMediumStyle(
                  color: AppColors.getTextPrimaryColor(context),
                  fontSize: FontSizeManager.s16,
                ).copyWith(
                  decoration: isCompleted ? TextDecoration.lineThrough : null,
                ),
              ),
              subtitle: habit.description != null
                  ? Text(
                      habit.description!,
                      style: getRegularStyle(
                        color: AppColors.getTextSecondaryColor(context),
                        fontSize: FontSizeManager.s14,
                      ),
                    )
                  : null,
              trailing: IconButton(
                icon: Icon(
                  isCompleted
                      ? Icons.check_circle
                      : Icons.radio_button_unchecked,
                  color: isCompleted
                      ? AppColors.successColor
                      : AppColors.getTextSecondaryColor(context),
                ),
                onPressed: () => onToggleCompletion(habit),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
