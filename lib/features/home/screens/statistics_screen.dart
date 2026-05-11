import 'package:habits_app/features/home/widgets/statistic_screen/weekly_chart_widget.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/features/home/cubits/statistics_cubit/statistics_cubit.dart';
import 'package:habits_app/features/home/widgets/statistic_screen/completion_rate_card.dart';
import 'package:habits_app/features/home/widgets/statistic_screen/statistic_card_widget.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_animate/flutter_animate.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.getBackgroundColor(context),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          S.of(context).statistics,
          style: getSemiBoldStyle(
            color: AppColors.getTextPrimaryColor(context),
            fontSize: FontSizeManager.s20,
          ),
        ),
      ),
      body: BlocBuilder<StatisticsCubit, StatisticsState>(
        builder: (context, state) {
          if (state is StatisticsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is StatisticsLoaded) {
            if (state.totalHabits == 0) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(
                      'assets/lottie/no_data.json',
                      width: 200.w,
                      height: 200.h,
                    ),
                    SizedBox(height: AppSize.s24.h),
                    Text(
                      S.of(context).no_habits_yet,
                      style: getSemiBoldStyle(
                        color: AppColors.getTextPrimaryColor(context),
                        fontSize: FontSizeManager.s18,
                      ),
                    )
                        .animate()
                        .fadeIn(delay: 300.ms)
                        .slideY(begin: 0.5, end: 0),
                  ],
                ),
              );
            }
            return SingleChildScrollView(
              padding: REdgeInsets.all(AppPadding.p24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    S.of(context).overview,
                    style: getSemiBoldStyle(
                      color: AppColors.getTextPrimaryColor(context),
                      fontSize: FontSizeManager.s22,
                    ),
                  ),
                  SizedBox(height: AppSize.s24.h),
                  WeeklyChartWidget(weeklyActivity: state.weeklyActivity),
                  SizedBox(height: AppSize.s24.h),
                  Row(
                    children: [
                      Expanded(
                        child: StatisticCardWidget(
                          title: S.of(context).current_streak,
                          value: '${state.currentStreak} ${S.of(context).days}',
                          icon: Icons.local_fire_department,
                          color: Colors.orange,
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: StatisticCardWidget(
                          title: S.of(context).best_streak,
                          value: '${state.longestStreak} ${S.of(context).days}',
                          icon: Icons.emoji_events,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppSize.s20.h),
                  CompletionRateCard(completionRate: state.completionRate),
                  SizedBox(height: AppSize.s20.h),
                  Row(
                    children: [
                      Expanded(
                        child: StatisticCardWidget(
                          title: S.of(context).total_habits,
                          value: state.totalHabits.toString(),
                          icon: Icons.list_alt,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: StatisticCardWidget(
                          title: S.of(context).habits_completed_today,
                          value: state.habitsCompletedToday.toString(),
                          icon: Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppSize.s20.h),
                  StatisticCardWidget(
                    title: S.of(context).completed_last_30,
                    value: '${state.completedDaysLast30} ${S.of(context).days}',
                    icon: Icons.calendar_month,
                    color: Colors.purple,
                  ),
                ],
              ),
            );
          } else if (state is StatisticsError) {
            return Center(child: Text(state.errorMessage));
          } else {
            return Center(child: Text(S.of(context).no_habits_yet));
          }
        },
      ),
    );
  }
}
