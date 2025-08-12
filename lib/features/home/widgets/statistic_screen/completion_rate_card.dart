import 'package:habits_app/core/export/lib_exports.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CompletionRateCard extends StatelessWidget {
  const CompletionRateCard({super.key, required this.completionRate});
  final double completionRate;

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
