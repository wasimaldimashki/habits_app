import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/core/services/service_locator.dart';
import 'package:habits_app/features/home/cubits/profile_header_cubit/profile_header_cubit.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = sl<ProfileHeaderCubit>();
        return cubit;
      },
      child: BlocBuilder<ProfileHeaderCubit, ProfileHeaderState>(
        builder: (context, state) {
          if (state is ProfileHeaderLoaded) {
            String userName = state.user.userName!;
            String userGender = state.user.gender!.name;

            return Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 250.h,
                  decoration: BoxDecoration(
                    color: AppColors.getSurfaceColor(context),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.r),
                      bottomRight: Radius.circular(30.r),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 40.h),
                      CircleAvatar(
                        radius: 60.r,
                        backgroundColor: AppColors.getBackgroundColor(context),
                        child: Image.network(
                          state.user.gender!.name.toLowerCase() == 'male'
                              ? 'https://avatar.iran.liara.run/public/43'
                              : 'https://avatar.iran.liara.run/public/53',
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        userName,
                        style: getSemiBoldStyle(
                          color: AppColors.getTextPrimaryColor(context),
                          fontSize: FontSizeManager.s24,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else if (state is ProfileHeaderLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProfileHeaderEmpty) {
            return Center(child: Text('User profile not found.'));
          } else if (state is ProfileHeaderError) {
            return Center(child: Text(state.errorMessage));
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
