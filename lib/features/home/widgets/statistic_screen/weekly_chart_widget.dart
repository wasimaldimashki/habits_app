import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:intl/intl.dart';

class WeeklyChartWidget extends StatelessWidget {
  final Map<DateTime, int> weeklyActivity;

  const WeeklyChartWidget({super.key, required this.weeklyActivity});

  @override
  Widget build(BuildContext context) {
    if (weeklyActivity.isEmpty) return const SizedBox.shrink();

    final sortedDates = weeklyActivity.keys.toList()..sort();
    final maxActivity = weeklyActivity.values.isEmpty ? 5 : weeklyActivity.values.reduce(max).toDouble();
    
    final barGroups = sortedDates.asMap().entries.map((entry) {
      final index = entry.key;
      final date = entry.value;
      final count = weeklyActivity[date] ?? 0;

      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: count.toDouble(),
            color: AppColors.primary,
            width: 18.w,
            borderRadius: BorderRadius.circular(4.r),
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              toY: max(5.0, maxActivity + 1), 
              color: AppColors.getBorderColor(context).withOpacity(0.1),
            ),
          ),
        ],
      );
    }).toList();

    return Container(
      height: 250.h,
      padding: REdgeInsets.all(AppPadding.p20),
      decoration: BoxDecoration(
        color: AppColors.getSurfaceColor(context),
        borderRadius: BorderRadius.circular(AppSize.s20),
        boxShadow: [
          BoxShadow(
            color: AppColors.getCardShadowColor(context),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).completed_last_7,
            style: getSemiBoldStyle(
              color: AppColors.getTextPrimaryColor(context),
              fontSize: FontSizeManager.s16,
            ),
          ),
          SizedBox(height: AppSize.s24.h),
          Expanded(
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: max(5.0, maxActivity + 1),
                barGroups: barGroups,
                gridData: const FlGridData(show: false),
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        final index = value.toInt();
                        if (index < 0 || index >= sortedDates.length) return const SizedBox.shrink();
                        final date = sortedDates[index];
                        return Padding(
                          padding: EdgeInsets.only(top: 8.h),
                          child: Text(
                            DateFormat('E', Localizations.localeOf(context).languageCode).format(date),
                            style: getMediumStyle(
                              color: AppColors.getTextSecondaryColor(context),
                              fontSize: FontSizeManager.s12,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                ),
                barTouchData: BarTouchData(
                  touchTooltipData: BarTouchTooltipData(
                    getTooltipColor: (_) => AppColors.primary,
                    getTooltipItem: (group, groupIndex, rod, rodIndex) {
                      return BarTooltipItem(
                        rod.toY.toInt().toString(),
                        getBoldStyle(color: Colors.white, fontSize: 14),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
