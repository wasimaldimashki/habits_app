import 'package:habits_app/core/export/lib_exports.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final sections = <({String title, String body})>[
      (title: s.privacy_policy_s1_title, body: s.privacy_policy_s1_body),
      (title: s.privacy_policy_s2_title, body: s.privacy_policy_s2_body),
      (title: s.privacy_policy_s3_title, body: s.privacy_policy_s3_body),
      (title: s.privacy_policy_s4_title, body: s.privacy_policy_s4_body),
      (title: s.privacy_policy_s5_title, body: s.privacy_policy_s5_body),
      (title: s.privacy_policy_s6_title, body: s.privacy_policy_s6_body),
      (title: s.privacy_policy_s7_title, body: s.privacy_policy_s7_body),
      (title: s.privacy_policy_s8_title, body: s.privacy_policy_s8_body),
      (title: s.privacy_policy_s9_title, body: s.privacy_policy_s9_body),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(s.privacy_policy),
        centerTitle: true,
        backgroundColor: AppColors.getSurfaceColor(context),
      ),
      body: SingleChildScrollView(
        padding: REdgeInsets.all(AppPadding.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              s.privacy_policy_last_updated,
              style: getMediumStyle(
                color: AppColors.getTextSecondaryColor(context),
                fontSize: FontSizeManager.s14,
              ),
            ),
            SizedBox(height: AppPadding.p16.h),
            Text(
              s.privacy_policy_intro,
              style: getRegularStyle(
                color: AppColors.getTextPrimaryColor(context),
                fontSize: FontSizeManager.s16,
              ),
            ),
            SizedBox(height: AppPadding.p24.h),
            ...sections.map(
              (section) => Padding(
                padding: REdgeInsets.only(bottom: AppPadding.p20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      section.title,
                      style: getSemiBoldStyle(
                        color: AppColors.getTextPrimaryColor(context),
                        fontSize: FontSizeManager.s18,
                      ),
                    ),
                    SizedBox(height: AppPadding.p8.h),
                    Text(
                      section.body,
                      style: getRegularStyle(
                        color: AppColors.getTextPrimaryColor(context),
                        fontSize: FontSizeManager.s14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
