import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/core/cache/cache_service.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/core/services/service_locator.dart';
import 'package:habits_app/features/home/cubits/profile_header_cubit/profile_header_cubit.dart';
import 'package:habits_app/features/home/widgets/profile_screen/profile_card_widget.dart';
import 'package:habits_app/core/cache/hive_service.dart';
import 'package:habits_app/features/home/widgets/profile_screen/profile_header.dart';
import 'package:habits_app/features/models/habit_model.dart';
import 'package:habits_app/features/models/user_model.dart';
import 'package:habits_app/features/shared/widgets/language_dialog.dart';

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
                      title: S.of(context).update_user_profile,
                      icon: Icons.edit,
                      onTap: () async {
                        await context.push(AppRoutes.updateProfileScreen);
                      },
                    ),
                    SizedBox(height: 12.h),
                    // Language Switcher
                    ProfileCardWidget(
                      title: S.of(context).change_language,
                      icon: Icons.language,
                      onTap: () {
                        showLanguageDialog(context);
                      },
                    ),
                    SizedBox(height: 12.h),
                    ProfileCardWidget(
                      title: S.of(context).reset_app_data,
                      icon: Icons.refresh,
                      onTap: () async {
                        await showDialog(
                          context: context,
                          builder: (BuildContext dialogContext) {
                            return AlertDialog(
                              title: Text(S.of(context).confirm_reset),
                              content: Text(
                                S.of(context).reset_confirm_message,
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: Text(S.of(context).cancel),
                                  onPressed: () {
                                    Navigator.of(dialogContext).pop();
                                  },
                                ),
                                TextButton(
                                  child: Text(
                                    S.of(context).delete,
                                    style: const TextStyle(
                                        color: AppColors.errorColor),
                                  ),
                                  onPressed: () async {
                                    Navigator.of(dialogContext).pop();
                                    await sl<GenericHiveService<UserModel>>()
                                        .clear();
                                    await sl<GenericHiveService<HabitModel>>()
                                        .clear();
                                    await sl<CacheService>().clearAllData();
                                    if (context.mounted) {
                                      context.go(AppRoutes.splashScreen);
                                    }
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                    SizedBox(height: 12.h),
                    ProfileCardWidget(
                      title: S.of(context).privacy_policy,
                      icon: Icons.privacy_tip_outlined,
                      onTap: () {
                        context.push(AppRoutes.privacyPolicyScreen);
                      },
                    ),
                    SizedBox(height: 12.h),
                    ProfileCardWidget(
                      title: S.of(context).about_us,
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
