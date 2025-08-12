import 'package:habits_app/core/export/lib_exports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/features/home/cubits/statistics_cubit/statistics_cubit.dart';
import 'package:habits_app/features/home/widgets/statistic_screen/statistic_card_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StatisticsCubit()..loadStatistics(),
      child: Scaffold(
        backgroundColor: AppColors.getBackgroundColor(context),
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Statistics',
            style: getSemiBoldStyle(
              color: AppColors.getTextPrimaryColor(context),
              fontSize: FontSizeManager.s20,
            ),
          ),
        ),
        body: BlocListener<StatisticsCubit, StatisticsState>(
          listener: (context, state) {
            // Listen to changes in HabitsCubit and reload statistics
            if (state is StatisticsLoaded) {
              context.read<StatisticsCubit>().loadStatistics();
            }
          },
          child: BlocBuilder<StatisticsCubit, StatisticsState>(
            builder: (context, state) {
              if (state is StatisticsLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is StatisticsLoaded) {
                return SingleChildScrollView(
                  padding: REdgeInsets.all(AppPadding.p24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Overview',
                        style: getSemiBoldStyle(
                          color: AppColors.getTextPrimaryColor(context),
                          fontSize: FontSizeManager.s22,
                        ),
                      ),
                      SizedBox(height: AppSize.s20.h),
                      // Pass the raw completion rate (0.0 - 1.0) to the widget
                      _CompletionRateCard(
                          completionRate: state.completionRate / 100),
                      SizedBox(height: AppSize.s20.h),
                      StatisticCardWidget(
                        title: 'Total Habits',
                        value: state.totalHabits.toString(),
                      ),
                      SizedBox(height: AppSize.s20.h),
                      StatisticCardWidget(
                        title: 'Longest Streak',
                        value: '${state.longestStreak} days',
                      ),
                      SizedBox(height: AppSize.s20.h),
                      StatisticCardWidget(
                        title: 'Habits Completed Today',
                        value: state.habitsCompletedToday.toString(),
                      ),
                      SizedBox(height: AppSize.s20.h),
                      StatisticCardWidget(
                        title: 'Days Completed (Last 7 Days)',
                        value: state.completedDaysLast7.toString(),
                      ),
                      SizedBox(height: AppSize.s20.h),
                      StatisticCardWidget(
                        title: 'Days Completed (Last 30 Days)',
                        value: state.completedDaysLast30.toString(),
                      ),
                    ],
                  ),
                );
              } else if (state is StatisticsError) {
                return Center(child: Text(state.errorMessage));
              } else {
                return const Center(child: Text('No habits yet!'));
              }
            },
          ),
        ),
      ),
    );
  }
}

// Custom widget for the circular progress indicator
class _CompletionRateCard extends StatelessWidget {
  final double completionRate;

  const _CompletionRateCard({required this.completionRate});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.all(AppPadding.p16),
      decoration: BoxDecoration(
        color: AppColors.getSurfaceColor(context),
        borderRadius: BorderRadius.circular(AppSize.s16),
        boxShadow: [
          BoxShadow(
            color: AppColors.getTextSecondaryColor(context).withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Completion Rate',
                style: getMediumStyle(
                  color: AppColors.getTextSecondaryColor(context),
                  fontSize: FontSizeManager.s16,
                ),
              ),
              SizedBox(height: AppSize.s8.h),
              Text(
                // Multiply by 100 for text display only
                '${(completionRate * 100).toStringAsFixed(1)}%',
                style: getSemiBoldStyle(
                  color: AppColors.getTextPrimaryColor(context),
                  fontSize: FontSizeManager.s30,
                ),
              ),
            ],
          ),
          CircularPercentIndicator(
            radius: AppSize.s40.r,
            lineWidth: AppSize.s8.w,
            // Pass the raw value (0.0 - 1.0) here
            percent: completionRate,
            center: Text(
              '${(completionRate * 100).toStringAsFixed(0)}%',
              style: getSemiBoldStyle(
                color: AppColors.getTextPrimaryColor(context),
                fontSize: FontSizeManager.s16,
              ),
            ),
            progressColor: AppColors.primary,
            backgroundColor: AppColors.getBackgroundColor(context),
            curve: Curves.easeIn,
            animation: true,
          ),
        ],
      ),
    );
  }
}
