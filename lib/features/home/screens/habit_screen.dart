import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/features/home/cubits/habit_screen_cubit/habit_screen_cubit.dart';
import 'package:habits_app/features/home/widgets/habit_screen/calendar_horizontal_widget.dart';
import 'package:habits_app/features/home/widgets/habit_screen/float_btn_widget.dart';
import 'package:habits_app/features/home/widgets/habit_screen/habit_list_view_widget.dart';

class HabitScreen extends StatelessWidget {
  const HabitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HabitScreenCubit, HabitScreenState>(
        builder: (context, state) {
          final cubit = BlocProvider.of<HabitScreenCubit>(context);
          return SingleChildScrollView(
            padding: REdgeInsets.symmetric(horizontal: AppPadding.p24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: AppSize.s50.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Habit App',
                      style: getBoldStyle(
                        color: AppColors.getTextPrimaryColor(context),
                        fontSize: FontSizeManager.s28,
                      ),
                    ),
                    Text(
                      'Month ${state.selectedDate.month} ${state.selectedDate.year}',
                      style: getSemiBoldStyle(
                        color: AppColors.getTextPrimaryColor(context),
                        fontSize: FontSizeManager.s18,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSize.s30.h),
                // Horizontal Date Row using CalendarHorizontalWidget
                CalendarHorizontalWidget(
                  selectedDate: state.selectedDate,
                  onDaySelected: (date) => cubit.onDaySelected(date),
                ),
                SizedBox(height: AppSize.s40.h),
                Text(
                  'Habits',
                  style: getSemiBoldStyle(
                    color: AppColors.getTextPrimaryColor(context),
                    fontSize: FontSizeManager.s22,
                  ),
                ),
                SizedBox(height: AppSize.s24.h),
                // Display habits or a message
                if (state.habitsForSelectedDay.isEmpty)
                  Center(
                    child: Column(
                      children: [
                        Image.asset(
                          ImageApplication.noHabits,
                          width: 250.w,
                          height: 250.h,
                        ),
                        SizedBox(height: AppSize.s24.h),
                        Text(
                          'No Habits Added',
                          style: getSemiBoldStyle(
                            color: AppColors.getTextPrimaryColor(context),
                            fontSize: FontSizeManager.s18,
                          ),
                        ),
                        SizedBox(height: AppSize.s8.h),
                        Text(
                          'Try to add some',
                          style: getRegularStyle(
                            color: AppColors.getTextSecondaryColor(context),
                            fontSize: FontSizeManager.s16,
                          ),
                        ),
                      ],
                    ),
                  )
                else
                  // Habit list view with drag and drop
                  HabitListViewWidget(
                    habits: state.habitsForSelectedDay,
                    onReorder: cubit.reorderHabits,
                    onToggleCompletion: cubit.toggleHabitCompletion,
                    onDelete: cubit.deleteHabit,
                  ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: const FloatBtnWidget(),
    );
  }
}
