import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/features/manage_habit/cubit/manage_habit_cubit.dart';
import 'package:habits_app/features/models/habit_model.dart';
import 'package:habits_app/features/shared/fields_widgets/custom_text_field.dart';

void showEditHabitSheet(BuildContext context, HabitModel habit) {
  final TextEditingController nameController =
      TextEditingController(text: habit.name);
  final TextEditingController descriptionController =
      TextEditingController(text: habit.description);

  showModalBottomSheet(
    backgroundColor: AppColors.getBackgroundColor(context),
    context: context,
    isScrollControlled: true,
    builder: (ctx) => BlocProvider.value(
      value: BlocProvider.of<ManageHabitCubit>(context),
      child: EditHabitSheet(
        habit: habit,
      ),
    ),
  ).whenComplete(() {
    nameController.dispose();
    descriptionController.dispose();
  });
}

class EditHabitSheet extends StatefulWidget {
  final HabitModel habit;
  const EditHabitSheet({super.key, required this.habit});

  @override
  State<EditHabitSheet> createState() => _EditHabitSheetState();
}

class _EditHabitSheetState extends State<EditHabitSheet> {
  late final TextEditingController _nameController;
  late final TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.habit.name);
    _descriptionController =
        TextEditingController(text: widget.habit.description);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _saveChanges() {
    context.read<ManageHabitCubit>().editHabit(
          habitId: widget.habit.id,
          newName: _nameController.text,
          newDescription: _descriptionController.text,
        );
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
          SizedBox(height: AppSize.s16.h),
          CustomFormTextField(
            nameLabel: 'Description',
            controller: _descriptionController,
            maxLines: 3,
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
