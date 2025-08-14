import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:habits_app/features/about_us/widgets/social_icon.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  // Developer's data
  final String _developerName = 'Wasim Aldiamshki';
  final String _developerImage = ImageApplication.profileImage;
  final String _developerBio =
      'Professional Flutter developer with hands-on experience in designing and developing high-quality mobile and web applications using Flutter. Dedicated to building impactful products and continuously learning new technologies.';

  final String _githubUrl = 'https://github.com/wasimaldimashki';
  final String _linkedinUrl =
      'https://www.linkedin.com/in/wasim-aldimashki-a76993106/';
  final String _facebookUrl = 'https://www.facebook.com/wasim.aldimashki';
  final String _instagramUrl = 'https://www.instagram.com/wasim_aldimashki/';
  final String _whatsappUrl = 'https://wa.me/+963991413927';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        centerTitle: true,
        backgroundColor: AppColors.getSurfaceColor(context),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: REdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h),
              CircleAvatar(
                radius: 80.r,
                backgroundImage: AssetImage(_developerImage),
              )
                  .animate()
                  .fade(duration: 800.ms)
                  .scale(duration: 800.ms, curve: Curves.easeOut),
              SizedBox(height: 20.h),
              Text(
                _developerName,
                style: getSemiBoldStyle(
                  color: AppColors.getTextPrimaryColor(context),
                  fontSize: FontSizeManager.s24,
                ),
              )
                  .animate()
                  .fadeIn(delay: 500.ms, duration: 800.ms)
                  .slideY(begin: 0.5, end: 0, duration: 800.ms),
              SizedBox(height: 8.h),
              Padding(
                padding: REdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  _developerBio,
                  textAlign: TextAlign.center,
                  style: getRegularStyle(
                    color: AppColors.getTextPrimaryColor(context),
                    fontSize: FontSizeManager.s16,
                  ),
                )
                    .animate()
                    .fadeIn(delay: 700.ms, duration: 800.ms)
                    .slideY(begin: 0.5, end: 0, duration: 800.ms),
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(
                    icon: FontAwesomeIcons.gitlab,
                    url: _githubUrl,
                  )
                      .animate()
                      .fadeIn(delay: 900.ms, duration: 800.ms)
                      .slideY(begin: 0.5, end: 0, duration: 800.ms),
                  SizedBox(width: 20.w),
                  SocialIcon(
                    icon: FontAwesomeIcons.linkedin,
                    url: _linkedinUrl,
                  )
                      .animate()
                      .fadeIn(delay: 1100.ms, duration: 800.ms)
                      .slideY(begin: 0.5, end: 0, duration: 800.ms),
                  SizedBox(width: 20.w),
                  SocialIcon(
                    icon: FontAwesomeIcons.facebook,
                    url: _facebookUrl,
                  )
                      .animate()
                      .fadeIn(delay: 1300.ms, duration: 800.ms)
                      .slideY(begin: 0.5, end: 0, duration: 800.ms),
                  SizedBox(width: 20.w),
                  SocialIcon(
                    icon: FontAwesomeIcons.instagram,
                    url: _instagramUrl,
                  )
                      .animate()
                      .fadeIn(delay: 1300.ms, duration: 800.ms)
                      .slideY(begin: 0.5, end: 0, duration: 800.ms),
                  SizedBox(width: 20.w),
                  SocialIcon(
                    icon: FontAwesomeIcons.whatsapp,
                    url: _whatsappUrl,
                  )
                      .animate()
                      .fadeIn(delay: 1300.ms, duration: 800.ms)
                      .slideY(begin: 0.5, end: 0, duration: 800.ms),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
