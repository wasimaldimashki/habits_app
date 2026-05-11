import 'package:habits_app/core/export/lib_exports.dart';

class StatisticCardWidget extends StatelessWidget {
  const StatisticCardWidget({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  final String title;
  final String value;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.all(AppPadding.p16),
      decoration: BoxDecoration(
        color: AppColors.getSurfaceColor(context),
        borderRadius: BorderRadius.circular(AppSize.s16),
        boxShadow: [
          BoxShadow(
            color: AppColors.getTextSecondaryColor(context).withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: REdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: AppSize.s20,
                ),
              ),
            ],
          ),
          SizedBox(height: AppSize.s12.h),
          Text(
            title,
            style: getMediumStyle(
              color: AppColors.getTextSecondaryColor(context),
              fontSize: FontSizeManager.s14,
            ),
          ),
          SizedBox(height: AppSize.s4.h),
          Text(
            value,
            style: getBoldStyle(
              color: AppColors.getTextPrimaryColor(context),
              fontSize: FontSizeManager.s20,
            ),
          ),
        ],
      ),
    );
  }
}
