import 'package:habits_app/core/export/lib_exports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/features/home/cubits/statistics_cubit/statistics_cubit.dart';
import 'package:habits_app/features/home/widgets/statistic_screen/completion_rate_card.dart';
import 'package:habits_app/features/home/widgets/statistic_screen/statistic_card_widget.dart';

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
                      CompletionRateCard(
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
