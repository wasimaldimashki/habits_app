import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/features/home/widgets/profile_screen/profile_card_widget.dart';
import 'package:habits_app/features/home/widgets/profile_screen/profile_header.dart';
import 'package:habits_app/features/shared/widgets/theme_switcher.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.getBackgroundColor(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(),
            SizedBox(height: 24.h),
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  ProfileCardWidget(
                    title: 'Update User Profile',
                    icon: Icons.edit,
                    onTap: () {
                      context.push(AppRoutes.updateProfileScreen);
                    },
                  ),
                  SizedBox(height: 12.h),
                  ProfileCardWidget(
                    title: 'Reset App Data',
                    icon: Icons.refresh,
                    onTap: () async {
                      // await sl.call<CacheService>().clearAllData();
                      // context.go(AppRoutes.splashScreen);
                    },
                  ),
                  SizedBox(height: 12.h),
                  ProfileCardWidget(
                    title: 'About Us',
                    icon: Icons.info,
                    onTap: () {
                      context.push(AppRoutes.aboutUsScreen);
                    },
                  ),
                  SizedBox(height: 12.h),
                  ThemeSwitcher(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
