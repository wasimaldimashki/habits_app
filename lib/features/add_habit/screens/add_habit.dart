import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/features/add_habit/cubit/add_habit_cubit.dart';
import 'package:habits_app/features/add_habit/widgets/build_reminder_picker.dart';
import 'package:habits_app/features/add_habit/widgets/every_x_days_selector.dart';
import 'package:habits_app/features/add_habit/widgets/recurrence_type_selector.dart';
import 'package:habits_app/features/add_habit/widgets/weekly_day_selector.dart';
import 'package:habits_app/features/models/habit_model.dart';
import 'package:habits_app/features/shared/fields_widgets/custom_button_widget.dart';
import 'package:habits_app/features/shared/fields_widgets/custom_text_field.dart';

class AddHabitScreen extends StatefulWidget {
  const AddHabitScreen({super.key});

  @override
  State<AddHabitScreen> createState() => _AddHabitScreenState();
}

class _AddHabitScreenState extends State<AddHabitScreen> {
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _descriptionFocusNode = FocusNode();

  @override
  void dispose() {
    _nameFocusNode.dispose();
    _descriptionFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Dismiss keyboard when the user taps outside any text field.
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
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
              if (state.notificationWarning != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.orange.shade800,
                    duration: const Duration(seconds: 6),
                    content: Row(
                      children: [
                        const Icon(Icons.notifications_off_outlined,
                            color: Colors.white),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            S.of(context).notification_permission_warning,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
            }
            if (state is AddHabitError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMessage)),
              );
            }
          },
          builder: (context, state) {
            final cubit = BlocProvider.of<AddHabitCubit>(context);
            final isLoading = state is AddHabitLoading;

            return SingleChildScrollView(
              // Dismiss keyboard automatically when the user starts scrolling.
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
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
                    )
                        .animate()
                        .fadeIn(duration: 600.ms)
                        .slideY(begin: -0.2, end: 0),
                    SizedBox(height: AppSize.s24.h),
                    Center(
                      child: Image.asset(
                        ImageApplication.addHabit,
                        width: 200.w,
                        height: 200.h,
                      ),
                    )
                        .animate()
                        .scale(duration: 600.ms, curve: Curves.easeInOut),
                    SizedBox(height: AppSize.s24.h),
                    _buildSectionHeader(context, S.of(context).habit_name)
                        .animate()
                        .fadeIn(delay: 200.ms),
                    SizedBox(height: AppSize.s12.h),
                    CustomFormTextField(
                      nameLabel: S.of(context).name,
                      initialValue: state.habitName,
                      maxLines: 1,
                      maxLength: 20,
                      focusNode: _nameFocusNode,
                      // "Next" button moves focus to the description field.
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) => FocusScope.of(context)
                          .requestFocus(_descriptionFocusNode),
                      onChanged: cubit.updateHabitName,
                      hintText: S.of(context).habit_name_hint,
                      counterText: '${state.habitName.length}/20',
                    )
                        .animate()
                        .fadeIn(delay: 300.ms)
                        .slideX(begin: 0.1, end: 0),
                    SizedBox(height: AppSize.s12.h),
                    CustomFormTextField(
                      nameLabel: S.of(context).description,
                      initialValue: state.habitDescription,
                      maxLines: 3,
                      maxLength: 100,
                      focusNode: _descriptionFocusNode,
                      // "Done" dismisses the keyboard.
                      textInputAction: TextInputAction.done,
                      onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                      onChanged: cubit.updateHabitDescription,
                      hintText: S.of(context).description_hint,
                      counterText: '${state.habitDescription?.length ?? 0}/100',
                    )
                        .animate()
                        .fadeIn(delay: 400.ms)
                        .slideX(begin: 0.1, end: 0),
                    SizedBox(height: AppSize.s24.h),
                    _buildSectionHeader(context, S.of(context).pick_color)
                        .animate()
                        .fadeIn(delay: 500.ms),
                    SizedBox(height: AppSize.s12.h),
                    _buildColorPicker(cubit, state)
                        .animate()
                        .fadeIn(delay: 600.ms)
                        .slideX(begin: 0.1, end: 0),
                    SizedBox(height: AppSize.s24.h),
                    _buildSectionHeader(context, S.of(context).pick_icon)
                        .animate()
                        .fadeIn(delay: 700.ms),
                    SizedBox(height: AppSize.s12.h),
                    _buildIconPicker(cubit, state)
                        .animate()
                        .fadeIn(delay: 800.ms)
                        .slideX(begin: 0.1, end: 0),
                    SizedBox(height: AppSize.s24.h),
                    _buildSectionHeader(context, S.of(context).repeat_days)
                        .animate()
                        .fadeIn(delay: 900.ms),
                    SizedBox(height: AppSize.s12.h),
                    RecurrenceTypeSelector(state: state, cubit: cubit)
                        .animate()
                        .fadeIn(delay: 1000.ms)
                        .slideX(begin: 0.1, end: 0),
                    SizedBox(height: AppSize.s24.h),
                    if (state.recurrenceType == HabitRecurrenceType.weekly)
                      WeeklyDaySelector(state: state, cubit: cubit),
                    if (state.recurrenceType == HabitRecurrenceType.everyXDays)
                      EveryXDaysSelector(state: state, cubit: cubit),
                    SizedBox(height: AppSize.s24.h),
                    _buildSectionHeader(context, S.of(context).reminder_time)
                        .animate()
                        .fadeIn(delay: 1100.ms),
                    SizedBox(height: AppSize.s12.h),
                    BuildReminderPicker(cubit: cubit, state: state)
                        .animate()
                        .fadeIn(delay: 1200.ms)
                        .slideX(begin: 0.1, end: 0),
                    SizedBox(height: AppSize.s40.h),
                    // Show a loading indicator while saving, otherwise the
                    // button. Disable it when the form is invalid or loading.
                    isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : CustomButtonWidget(
                            borederRadius: defaultRadius,
                            title: S.of(context).submit,
                            onPressed: state.isFormValid
                                ? () async {
                                    FocusScope.of(context).unfocus();
                                    await cubit.saveHabit();
                                  }
                                : null,
                          ).animate(delay: 1300.ms).fadeIn().scale(),
                    SizedBox(height: AppSize.s16.h),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Text(
      title,
      style: getSemiBoldStyle(
        color: AppColors.getTextPrimaryColor(context),
        fontSize: FontSizeManager.s18,
      ),
    );
  }

  Widget _buildColorPicker(AddHabitCubit cubit, AddHabitState state) {
    final colors = [
      AppColors.primary,
      Colors.redAccent,
      Colors.greenAccent,
      Colors.orangeAccent,
      Colors.purpleAccent,
      Colors.tealAccent,
      Colors.pinkAccent,
      Colors.amberAccent,
    ];

    return SizedBox(
      height: 50.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        separatorBuilder: (_, __) => SizedBox(width: 10.w),
        itemBuilder: (context, index) {
          final color = colors[index];
          final isSelected = state.colorValue == color.value;
          return GestureDetector(
            onTap: () => cubit.updateColor(color.value),
            child: Container(
              width: 45.w,
              height: 45.h,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
                border: isSelected
                    ? Border.all(
                        color: AppColors.getTextPrimaryColor(context), width: 3)
                    : null,
                boxShadow: [
                  BoxShadow(
                    color: color.withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: isSelected
                  ? Icon(Icons.check, color: Colors.white, size: 20.sp)
                  : null,
            ),
          );
        },
      ),
    );
  }

  Widget _buildIconPicker(AddHabitCubit cubit, AddHabitState state) {
    final icons = [
      Icons.task_alt,
      Icons.fitness_center,
      Icons.book,
      Icons.water_drop,
      Icons.self_improvement,
      Icons.code,
      Icons.brush,
      Icons.shopping_basket,
      Icons.restaurant,
      Icons.access_alarm,
      Icons.home,
      Icons.work,
      Icons.message,
      Icons.medication,
    ];

    return SizedBox(
      height: 60.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: icons.length,
        separatorBuilder: (_, __) => SizedBox(width: 10.w),
        itemBuilder: (context, index) {
          final icon = icons[index];
          final isSelected = state.iconCodePoint == icon.codePoint;
          return GestureDetector(
            onTap: () => cubit.updateIcon(icon.codePoint),
            child: Container(
              width: 55.w,
              height: 55.h,
              decoration: BoxDecoration(
                color: isSelected
                    ? Color(state.colorValue).withOpacity(0.2)
                    : AppColors.getSurfaceColor(context),
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(
                  color: isSelected
                      ? Color(state.colorValue)
                      : AppColors.getBorderColor(context),
                  width: 2,
                ),
              ),
              child: Icon(
                icon,
                color: isSelected
                    ? Color(state.colorValue)
                    : AppColors.getTextSecondaryColor(context),
                size: 28.sp,
              ),
            ),
          );
        },
      ),
    );
  }
}
