import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/features/manage_habit/cubit/manage_habit_cubit.dart';
import 'package:habits_app/features/models/habit_model.dart';
import 'package:habits_app/features/shared/fields_widgets/custom_text_field.dart';

void showEditHabitSheet(BuildContext context, HabitModel habit) {
  showModalBottomSheet(
    backgroundColor: AppColors.getBackgroundColor(context),
    context: context,
    isScrollControlled: true,
    builder: (ctx) => BlocProvider.value(
      value: BlocProvider.of<ManageHabitCubit>(context),
      child: EditHabitSheet(habit: habit),
    ),
  );
}

class EditHabitSheet extends StatefulWidget {
  final HabitModel habit;
  const EditHabitSheet({super.key, required this.habit});

  @override
  State<EditHabitSheet> createState() => _EditHabitSheetState();
}

class _EditHabitSheetState extends State<EditHabitSheet> {
  late final TextEditingController _nameController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.habit.name);
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _saveChanges() {
    if (_nameController.text.trim().isEmpty) {
      return;
    }
    final updatedHabit = widget.habit.copyWith(
      name: _nameController.text.trim(),
    );
    context.read<ManageHabitCubit>().updateHabit(updatedHabit);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: AppPadding.p16,
        right: AppPadding.p16,
        top: AppPadding.p24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Edit Habit',
            style: getBoldStyle(
              color: AppColors.getTextPrimaryColor(context),
              fontSize: FontSizeManager.s22,
            ),
          ),
          SizedBox(height: AppSize.s24.h),
          CustomFormTextField(
            nameLabel: 'Habit Name',
            controller: _nameController,
          ),
          SizedBox(height: AppSize.s24.h),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _saveChanges,
              child: const Text('Save Changes'),
            ),
          ),
          SizedBox(height: AppSize.s16.h),
        ],
      ),
    );
  }
}
