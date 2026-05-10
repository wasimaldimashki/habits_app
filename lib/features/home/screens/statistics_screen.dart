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
                    SizedBox(height: AppSize.s20.h),
                    CompletionRateCard(
                        completionRate: state.completionRate / 100),
                    SizedBox(height: AppSize.s20.h),
                    StatisticCardWidget(
                      title: S.of(context).total_habits,
                      value: state.totalHabits.toString(),
                    ),
                    SizedBox(height: AppSize.s20.h),
                    StatisticCardWidget(
                      title: S.of(context).streak,
                      value: '${state.longestStreak} ${S.of(context).days}',
                    ),
                    SizedBox(height: AppSize.s20.h),
                    StatisticCardWidget(
                      title: S.of(context).habits_completed_today,
                      value: state.habitsCompletedToday.toString(),
                    ),
                    SizedBox(height: AppSize.s20.h),
                    StatisticCardWidget(
                      title: S.of(context).completed_last_7,
                      value: state.completedDaysLast7.toString(),
                    ),
                    SizedBox(height: AppSize.s20.h),
                    StatisticCardWidget(
                      title: S.of(context).completed_last_30,
                      value: state.completedDaysLast30.toString(),
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
      ),
    );
  }
}
