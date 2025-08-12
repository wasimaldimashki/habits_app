import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/features/add_habit/cubit/add_habit_cubit.dart';
import 'package:habits_app/features/add_habit/widgets/every_x_days_selector.dart';
import 'package:habits_app/features/add_habit/widgets/recurrence_type_selector.dart';
import 'package:habits_app/features/add_habit/widgets/weekly_day_selector.dart';
import 'package:habits_app/features/models/habit_model.dart';
import 'package:habits_app/features/shared/fields_widgets/custom_button_widget.dart';
import 'package:habits_app/features/shared/fields_widgets/custom_text_field.dart';

class AddHabitScreen extends StatelessWidget {
  const AddHabitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Habit',
          style: getSemiBoldStyle(
            color: AppColors.getTextPrimaryColor(context),
            fontSize: FontSizeManager.s20,
          ),
        ),
      ),
      body: BlocConsumer<AddHabitCubit, AddHabitState>(
        listener: (context, state) {
          if (state is AddHabitSuccess) {
            // Navigate back after successful habit creation
            context.pop(true);
          }
          if (state is AddHabitError) {
            // Show a snackbar with the error message
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errorMessage)),
            );
          }
        },
        builder: (context, state) {
          final cubit = BlocProvider.of<AddHabitCubit>(context);
          return SingleChildScrollView(
            padding: REdgeInsets.all(AppPadding.p24),
            child: Form(
              key: cubit.formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      'Create New Habit',
                      style: getSemiBoldStyle(
                        color: AppColors.getTextPrimaryColor(context),
                        fontSize: FontSizeManager.s22,
                      ),
                    ),
                  ),
                  SizedBox(height: AppSize.s24.h),
                  // Placeholder for the illustration
                  Center(
                    child: Image.asset(
                      ImageApplication.addHabit,
                      width: 200.w,
                      height: 200.h,
                    ),
                  ),
                  SizedBox(height: AppSize.s24.h),
                  // Habit Name Input
                  Text(
                    'Habit Name',
                    style: getSemiBoldStyle(
                      color: AppColors.getTextPrimaryColor(context),
                      fontSize: FontSizeManager.s18,
                    ),
                  ),
                  SizedBox(height: AppSize.s12.h),
                  CustomFormTextField(
                    nameLabel: 'Name',
                    initialValue: state.habitName,
                    maxLines: 1,
                    maxLength: 20,
                    onChanged: cubit.updateHabitName,
                    hintText: 'Habit Name',
                    counterText: '${state.habitName.length}/20',
                  ),
                  SizedBox(height: AppSize.s12.h),
                  CustomFormTextField(
                    nameLabel: 'Description',
                    initialValue: state.habitDescription,
                    maxLines: 3,
                    maxLength: 100,
                    onChanged: cubit.updateHabitDescription,
                    hintText: 'Habit Description (Optional)',
                    counterText: '${state.habitDescription?.length ?? 0}/100',
                  ),
                  SizedBox(height: AppSize.s24.h),
                  // Recurrence Type Selection
                  Text(
                    'Repeat Days',
                    style: getSemiBoldStyle(
                      color: AppColors.getTextPrimaryColor(context),
                      fontSize: FontSizeManager.s18,
                    ),
                  ),
                  SizedBox(height: AppSize.s12.h),
                  RecurrenceTypeSelector(state: state, cubit: cubit),
                  SizedBox(height: AppSize.s24.h),
                  if (state.recurrenceType == HabitRecurrenceType.weekly)
                    WeeklyDaySelector(state: state, cubit: cubit),
                  if (state.recurrenceType == HabitRecurrenceType.everyXDays)
                    EveryXDaysSelector(state: state, cubit: cubit),
                  SizedBox(height: AppSize.s40.h),
                  // Submit Button
                  CustomButtonWidget(
                    borederRadius: defaultRadius,
                    title: S.of(context).submit,
                    onPressed: () async {
                      await cubit.saveHabit();
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
