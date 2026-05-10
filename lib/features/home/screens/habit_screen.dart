import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:lottie/lottie.dart';
import 'package:habits_app/features/home/cubits/habit_screen_cubit/habit_screen_cubit.dart';
import 'package:habits_app/features/home/widgets/habit_screen/calendar_widget.dart';
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
                      S.of(context).app_name,
                      style: getBoldStyle(
                        color: AppColors.getTextPrimaryColor(context),
                        fontSize: FontSizeManager.s28,
                      ),
                    ),
                    Text(
                      '${_monthName(state.selectedDate.month, context)} ${state.selectedDate.year}',
                      style: getSemiBoldStyle(
                        color: AppColors.getTextPrimaryColor(context),
                        fontSize: FontSizeManager.s18,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSize.s30.h),
                CalendarWidget(
                  selectedDate: state.selectedDate,
                  onDaySelected: (date) => cubit.onDaySelected(date),
                  onToggleFormat: () => cubit.toggleCalendarFormat(),
                  calendarFormat: state.calendarFormat,
                  markedDates: state.markedDates,
                ),
                SizedBox(height: AppSize.s16.h),
                Text(
                  S.of(context).habits,
                  style: getSemiBoldStyle(
                    color: AppColors.getTextPrimaryColor(context),
                    fontSize: FontSizeManager.s22,
                  ),
                ),
                SizedBox(height: AppSize.s24.h),
                if (state.habitsForSelectedDay.isEmpty)
                  Center(
                    child: Column(
                      children: [
                        Lottie.asset(
                          'assets/lottie/no_data.json',
                          width: 250.w,
                          height: 250.h,
                        ),
                        SizedBox(height: AppSize.s24.h),
                        Text(
                          S.of(context).no_habits_added,
                          style: getSemiBoldStyle(
                            color: AppColors.getTextPrimaryColor(context),
                            fontSize: FontSizeManager.s18,
                          ),
                        ),
                        SizedBox(height: AppSize.s8.h),
                        Text(
                          S.of(context).try_to_add_some,
                          style: getRegularStyle(
                            color: AppColors.getTextSecondaryColor(context),
                            fontSize: FontSizeManager.s16,
                          ),
                        ),
                      ],
                    ),
                  )
                else
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

  String _monthName(int month, BuildContext context) {
    const months = [
      'January', 'February', 'March', 'April', 'May', 'June',
      'July', 'August', 'September', 'October', 'November', 'December',
    ];
    return months[month - 1];
  }
}
