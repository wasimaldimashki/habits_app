import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/core/services/service_locator.dart';
import 'package:habits_app/features/models/gender_enum.dart';
import 'package:habits_app/features/shared/fields_widgets/custom_button_widget.dart';
import 'package:habits_app/features/shared/fields_widgets/custom_text_field.dart';
import 'package:habits_app/features/update_profile/cubit/update_profile_cubit.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<UpdateProfileCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Update Profile'),
          backgroundColor: AppColors.getSurfaceColor(context),
        ),
        body: BlocListener<UpdateProfileCubit, UpdateProfileState>(
          listener: (context, state) {
            if (state is UpdateProfileSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Profile updated successfully!')),
              );
              Navigator.of(context).pop();
            } else if (state is UpdateProfileError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: ${state.errorMessage}')),
              );
            }
          },
          child: Padding(
            padding: REdgeInsets.all(16.w),
            child: const _UpdateProfileForm(),
          ),
        ),
      ),
    );
  }
}

class _UpdateProfileForm extends StatelessWidget {
  const _UpdateProfileForm();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfileCubit, UpdateProfileState>(
      builder: (context, state) {
        if (state is UpdateProfileFormState) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20.h),
                // TextFormField(
                //   initialValue: state.username,
                //   decoration: const InputDecoration(
                //     labelText: 'Username',
                //     border: OutlineInputBorder(),
                //   ),
                // onChanged: (newValue) {
                //   BlocProvider.of<UpdateProfileCubit>(context)
                //       .onUsernameChanged(newValue);
                // },
                // ),
                CustomFormTextField(
                  initialValue: state.username,
                  onChanged: (newValue) {
                    BlocProvider.of<UpdateProfileCubit>(context)
                        .onUsernameChanged(newValue);
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  nameLabel: 'Name',
                  hintText: 'enter name here ..',
                  autofillHints: [AutofillHints.name],
                  keyboardType: TextInputType.name,
                ),
                SizedBox(height: 20.h),
                DropdownButtonFormField<Gender?>(
                  value: state.gender,
                  decoration: InputDecoration(
                    fillColor:
                        AppColors.getTextPrimaryColor(context).withAlpha(50),
                    labelText: 'Gender',
                    border: OutlineInputBorder(),
                  ),
                  items: Gender.values.map((Gender value) {
                    return DropdownMenuItem<Gender?>(
                      value: value,
                      child: Text(value.name.capitalize()),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    BlocProvider.of<UpdateProfileCubit>(context)
                        .onGenderChanged(newValue);
                  },
                ),
                SizedBox(height: 40.h),
                CustomButtonWidget(
                  title: 'Update Profile',
                  onPressed: () {
                    BlocProvider.of<UpdateProfileCubit>(context)
                        .updateUserProfile();
                  },
                  borederRadius: defaultRadius,
                ),
              ],
            ),
          );
        }
        // Show a loading indicator or a placeholder
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
