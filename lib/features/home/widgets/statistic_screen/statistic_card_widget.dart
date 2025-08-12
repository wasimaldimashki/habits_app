import 'package:habits_app/core/export/lib_exports.dart';

class StatisticCardWidget extends StatelessWidget {
  const StatisticCardWidget(
      {super.key, required this.title, required this.value});
  final String title;
  final String value;
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: getMediumStyle(
              color: AppColors.getTextSecondaryColor(context),
              fontSize: FontSizeManager.s16,
            ),
          ),
          SizedBox(height: AppSize.s8.h),
          Text(
            value,
            style: getSemiBoldStyle(
              color: AppColors.getTextPrimaryColor(context),
              fontSize: FontSizeManager.s30,
            ),
          ),
        ],
      ),
    );
  }
}
