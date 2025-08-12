import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/core/services/service_locator.dart';
import 'package:habits_app/features/home/cubits/profile_header_cubit/profile_header_cubit.dart';
import 'package:habits_app/features/home/widgets/profile_screen/profile_card_widget.dart';
import 'package:habits_app/features/home/widgets/profile_screen/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileHeaderCubit>(
      create: (context) => sl<ProfileHeaderCubit>(),
      child: Scaffold(
        backgroundColor: AppColors.getBackgroundColor(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<ProfileHeaderCubit, ProfileHeaderState>(
                builder: (context, state) {
                  if (state is ProfileHeaderLoading) {
                    return const CircularProgressIndicator();
                  } else if (state is ProfileHeaderLoaded) {
                    return ProfileHeader();
                  } else if (state is ProfileHeaderError) {
                    return Center(child: Text(state.errorMessage));
                  }
                  return const SizedBox.shrink();
                },
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: REdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    ProfileCardWidget(
                      title: 'Update User Profile',
                      icon: Icons.edit,
                      onTap: () async {
                        await context.push(AppRoutes.updateProfileScreen);
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
