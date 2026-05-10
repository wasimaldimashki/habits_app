import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/features/models/gender_enum.dart';
import 'package:habits_app/features/shared/fields_widgets/custom_button_widget.dart';
import 'package:habits_app/features/shared/fields_widgets/custom_text_field.dart';
import 'package:habits_app/features/signin/cubit/signin_cubit.dart';

class SigininScreen extends StatefulWidget {
  const SigininScreen({super.key});

  @override
  State<SigininScreen> createState() => _SigininScreenState();
}

class _SigininScreenState extends State<SigininScreen> {
  late final TextEditingController _nameController;
  late final SigninCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = SigninCubit();
    _nameController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
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
            return Center(
              child: SingleChildScrollView(
                padding: REdgeInsets.all(AppPadding.p24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      S.of(context).welcome_to_habit_app,
                      style: getSemiBoldStyle(
                        color: AppColors.getTextPrimaryColor(context),
                        fontSize: FontSizeManager.s28,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: AppSize.s10.h),
                    Text(
                      S.of(context).lets_get_you_set_up,
                      style: getRegularStyle(
                        color: AppColors.getTextSecondaryColor(context),
                        fontSize: FontSizeManager.s16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: AppSize.s40.h),
                    CustomFormTextField(
                      controller: _nameController,
                      onChanged: (value) {
                        _cubit.updateName(value);
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return S.of(context).please_enter_your_name;
                        }
                        return null;
                      },
                      nameLabel: S.of(context).name,
                      hintText: S.of(context).enter_name_hint,
                      autofillHints: const [AutofillHints.name],
                      keyboardType: TextInputType.name,
                    ),
                    SizedBox(height: AppSize.s24.h),
                    Text(
                      S.of(context).select_your_gender,
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
                            onPressed: () => _cubit.updateGender(Gender.male),
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
                              S.of(context).male,
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
                            onPressed: () =>
                                _cubit.updateGender(Gender.female),
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
                              S.of(context).female,
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
                      title: S.of(context).continue_btn,
                      onPressed: state.isFormValid && state is! SigninLoading
                          ? () => _cubit.submitForm()
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
