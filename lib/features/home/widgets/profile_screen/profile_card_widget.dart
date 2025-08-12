import 'package:habits_app/core/export/lib_exports.dart';

class ProfileCardWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final bool isDestructive;

  const ProfileCardWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.isDestructive = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSize.s16),
      child: Container(
        padding: REdgeInsets.symmetric(
          horizontal: AppPadding.p16,
          vertical: AppPadding.p12,
        ),
        decoration: BoxDecoration(
          color: AppColors.getSurfaceColor(context),
          borderRadius: BorderRadius.circular(AppSize.s16),
          boxShadow: [
            BoxShadow(
              color: AppColors.getTextSecondaryColor(context).withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isDestructive ? AppColors.error : AppColors.primary,
              size: AppSize.s24.r,
            ),
            SizedBox(width: AppSize.s16.w),
            Text(
              title,
              style: getMediumStyle(
                color: isDestructive
                    ? AppColors.error
                    : AppColors.getTextPrimaryColor(context),
                fontSize: FontSizeManager.s16,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: AppColors.getTextSecondaryColor(context),
              size: AppSize.s16.r,
            ),
          ],
        ),
      ),
    );
  }
}
