import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/features/models/gender_enum.dart';
import 'package:habits_app/features/shared/fields_widgets/custom_button_widget.dart';
import 'package:habits_app/features/shared/fields_widgets/custom_text_field.dart';
import 'package:habits_app/features/signin/cubit/signin_cubit.dart';

class SigininScreen extends StatelessWidget {
  const SigininScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(),
      child: Scaffold(
        backgroundColor: AppColors.getBackgroundColor(context),
        body: BlocConsumer<SigninCubit, SigninState>(
          listener: (context, state) {
            if (state is SigninSuccess) {
              context.go(AppRoutes.homeScreen);
            }
            if (state is SigninError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMessage)),
              );
            }
          },
          builder: (context, state) {
            final cubit = BlocProvider.of<SigninCubit>(context);
            final nameController = TextEditingController(text: state.userName);
            if (nameController.text != state.userName) {
              nameController.selection = TextSelection.fromPosition(
                  TextPosition(offset: nameController.text.length));
            }

            return Center(
              child: SingleChildScrollView(
                padding: REdgeInsets.all(AppPadding.p24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Welcome to Habit App!',
                      style: getSemiBoldStyle(
                        color: AppColors.getTextPrimaryColor(context),
                        fontSize: FontSizeManager.s28,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: AppSize.s10.h),
                    Text(
                      'Let\'s get you set up.',
                      style: getRegularStyle(
                        color: AppColors.getTextSecondaryColor(context),
                        fontSize: FontSizeManager.s16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: AppSize.s40.h),
                    CustomFormTextField(
                      initialValue: state.userName,
                      onChanged: (value) {
                        cubit.updateName(value);
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
                    SizedBox(height: AppSize.s24.h),
                    Text(
                      'Select your Gender',
                      style: getSemiBoldStyle(
                        color: AppColors.getTextPrimaryColor(context),
                        fontSize: FontSizeManager.s18,
                      ),
                    ),
                    SizedBox(height: AppSize.s12.h),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => cubit.updateGender(Gender.male),
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.resolveWith<Color>(
                                      (states) {
                                return state.selectedGender == Gender.male
                                    ? AppColors.primary
                                    : AppColors.getSurfaceColor(context);
                              }),
                              side: WidgetStatePropertyAll(
                                BorderSide(
                                  color: state.selectedGender == Gender.male
                                      ? AppColors.primary
                                      : AppColors.getBorderColor(context),
                                ),
                              ),
                            ),
                            child: Text(
                              'Male',
                              style: getMediumStyle(
                                color: state.selectedGender == Gender.male
                                    ? AppColors.white
                                    : AppColors.getTextPrimaryColor(context),
                                fontSize: FontSizeManager.s16,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: AppSize.s16.w),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => cubit.updateGender(Gender.female),
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.resolveWith<Color>(
                                      (states) {
                                return state.selectedGender == Gender.female
                                    ? AppColors.primary
                                    : AppColors.getSurfaceColor(context);
                              }),
                              side: WidgetStatePropertyAll(
                                BorderSide(
                                  color: state.selectedGender == Gender.female
                                      ? AppColors.primary
                                      : AppColors.getBorderColor(context),
                                ),
                              ),
                            ),
                            child: Text(
                              'Female',
                              style: getMediumStyle(
                                color: state.selectedGender == Gender.female
                                    ? AppColors.white
                                    : AppColors.getTextPrimaryColor(context),
                                fontSize: FontSizeManager.s16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: AppSize.s40.h),
                    CustomButtonWidget(
                      borederRadius: defaultRadius,
                      title: 'Continue',
                      onPressed: state.isFormValid && state is! SigninLoading
                          ? () => cubit.submitForm()
                          : null,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
