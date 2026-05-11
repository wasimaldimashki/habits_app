import 'package:habits_app/core/export/lib_exports.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CompletionRateCard extends StatelessWidget {
  const CompletionRateCard({super.key, required this.completionRate});
  final double completionRate;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).completion_rate,
                style: getMediumStyle(
                  color: AppColors.getTextSecondaryColor(context),
                  fontSize: FontSizeManager.s16,
                ),
              ),
              SizedBox(height: AppSize.s8.h),
              Text(
                '${(completionRate * 100).toStringAsFixed(1)}%',
                style: getSemiBoldStyle(
                  color: AppColors.getTextPrimaryColor(context),
                  fontSize: FontSizeManager.s32,
                ),
              ),
            ],
          ),
          CircularPercentIndicator(
            radius: 45.r,
            lineWidth: 10.w,
            percent: completionRate.clamp(0.0, 1.0),
            center: Text(
              '${(completionRate * 100).toStringAsFixed(0)}%',
              style: getBoldStyle(
                color: AppColors.primary,
                fontSize: FontSizeManager.s16,
              ),
            ),
            progressColor: AppColors.primary,
            backgroundColor: AppColors.primary.withOpacity(0.1),
            circularStrokeCap: CircularStrokeCap.round,
            curve: Curves.easeInOut,
            animation: true,
            animationDuration: 1000,
          ),
        ],
      ),
    );
  }
}
