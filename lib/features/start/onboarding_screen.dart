import 'package:habits_app/core/cache/cache_service.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/core/services/service_locator.dart';
import 'package:habits_app/features/start/data/on_boarding_pages.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  bool _isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: onboardingPages.length,
            onPageChanged: (index) {
              setState(() {
                _isLastPage = index == onboardingPages.length - 1;
              });
            },
            itemBuilder: (context, index) {
              final page = onboardingPages[index];
              return buildOnboardingPage(
                imagePath: page['image']!,
                title: page['title']!,
                description: page['description']!,
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: REdgeInsets.only(bottom: 40.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: onboardingPages.length,
                    effect: const ExpandingDotsEffect(
                      dotHeight: 8,
                      dotWidth: 8,
                      spacing: 5,
                      activeDotColor: AppColors.primary,
                      dotColor: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (!_isLastPage)
                          TextButton(
                            onPressed: () {
                              _pageController
                                  .jumpToPage(onboardingPages.length - 1);
                            },
                            child: Text(S.of(context).skip,
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 16)),
                          ),
                        if (_pageController.hasClients &&
                            _pageController.page! > 0)
                          ElevatedButton(
                            onPressed: () {
                              _pageController.previousPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeIn,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shape: const CircleBorder(),
                              padding: REdgeInsets.all(12),
                            ),
                            child: const Icon(Icons.arrow_back),
                          )
                        else
                          const SizedBox(width: 48),
                        ElevatedButton(
                          onPressed: () {
                            if (_isLastPage) {
                              sl.call<CacheService>().saveData(
                                  key: 'isOnBoardingCompleted', value: 'true');
                              context.go(AppRoutes.signInScreen);
                            } else {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeIn,
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            foregroundColor: Colors.white,
                            shape: _isLastPage
                                ? RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))
                                : const CircleBorder(),
                            padding: _isLastPage
                                ? const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 15)
                                : const EdgeInsets.all(12),
                          ),
                          child: _isLastPage
                              ? Text(S.of(context).get_started,
                                  style: getSemiBoldStyle(
                                      color: AppColors.getTextPrimaryColor(
                                          context),
                                      fontSize: FontSizeManager.s16))
                              : const Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOnboardingPage({
    required String imagePath,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          const SizedBox(height: 30),
          Text(
            title,
            textAlign: TextAlign.center,
            style: getSemiBoldStyle(
              color: AppColors.getTextPrimaryColor(context),
              fontSize: FontSizeManager.s28,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            description,
            textAlign: TextAlign.center,
            style: getRegularStyle(
              color: AppColors.getTextSecondaryColor(context),
              fontSize: FontSizeManager.s16,
            ),
          ),
        ],
      ),
    );
  }
}
