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
          S.of(context).add_habit,
          style: getSemiBoldStyle(
            color: AppColors.getTextPrimaryColor(context),
            fontSize: FontSizeManager.s20,
          ),
        ),
      ),
      body: BlocConsumer<AddHabitCubit, AddHabitState>(
        listener: (context, state) {
          if (state is AddHabitSuccess) {
            context.pop(true);
          }
          if (state is AddHabitError) {
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
                      S.of(context).create_new_habit,
                      style: getSemiBoldStyle(
                        color: AppColors.getTextPrimaryColor(context),
                        fontSize: FontSizeManager.s22,
                      ),
                    ),
                  ),
                  SizedBox(height: AppSize.s24.h),
                  Center(
                    child: Image.asset(
                      ImageApplication.addHabit,
                      width: 200.w,
                      height: 200.h,
                    ),
                  ),
                  SizedBox(height: AppSize.s24.h),
                  Text(
                    S.of(context).habit_name,
                    style: getSemiBoldStyle(
                      color: AppColors.getTextPrimaryColor(context),
                      fontSize: FontSizeManager.s18,
                    ),
                  ),
                  SizedBox(height: AppSize.s12.h),
                  CustomFormTextField(
                    nameLabel: S.of(context).name,
                    initialValue: state.habitName,
                    maxLines: 1,
                    maxLength: 20,
                    onChanged: cubit.updateHabitName,
                    hintText: S.of(context).habit_name_hint,
                    counterText: '${state.habitName.length}/20',
                  ),
                  SizedBox(height: AppSize.s12.h),
                  CustomFormTextField(
                    nameLabel: S.of(context).description,
                    initialValue: state.habitDescription,
                    maxLines: 3,
                    maxLength: 100,
                    onChanged: cubit.updateHabitDescription,
                    hintText: S.of(context).description_hint,
                    counterText: '${state.habitDescription?.length ?? 0}/100',
                  ),
                  SizedBox(height: AppSize.s24.h),
                  Text(
                    S.of(context).repeat_days,
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
