import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habits_app/core/cache/cache_service.dart';
import 'package:habits_app/core/constants/image_application.dart';
import 'package:habits_app/core/services/service_locator.dart';
import 'package:habits_app/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        String? isOnBoardingCompleted =
            sl.call<CacheService>().getData(key: 'isOnBoardingCompleted');
        if (isOnBoardingCompleted == 'true') {
          context.go(AppRoutes.homeScreen);
        } else {
          context.go(AppRoutes.onBoardingScreen);
        }
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                ImageApplication.logo,
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),
              Text(
                'Habit App',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
