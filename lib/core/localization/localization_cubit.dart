import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:habits_app/core/constants/image_application.dart';
import 'package:habits_app/core/theme/color_manager.dart';
import 'package:habits_app/core/theme/styles_manager.dart';
import 'package:habits_app/generated/l10n.dart';

class LocalizationCubit extends HydratedCubit<Locale> {
  LocalizationCubit() : super(const Locale('en'));

  void setLocale(Locale locale) {
    emit(locale);
  }

  @override
  Locale? fromJson(Map<String, dynamic> json) {
    if (json['language_code'] != null) {
      return Locale(json['language_code']);
    }
    return const Locale('en');
  }

  @override
  Map<String, dynamic>? toJson(Locale state) {
    return {'language_code': state.languageCode};
  }

//** Function Language Dialog **//
  void showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.getSurfaceColor(context),
          elevation: 5,
          title: Text(S.of(context).change_language),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Image.asset(ImageApplication.usaFlag, width: 32.w),
                title: Text(S.of(context).english,
                    style: getRegularStyle(
                        color: AppColors.getTextPrimaryColor(context))),
                onTap: () {
                  Navigator.of(context).pop();
                  setLocale(const Locale('en', 'US'));
                },
              ),
              ListTile(
                leading: Image.asset(ImageApplication.syrianFlag, width: 32.w),
                title: Text(S.of(context).arabic,
                    style: getRegularStyle(
                        color: AppColors.getTextPrimaryColor(context))),
                onTap: () {
                  Navigator.of(context).pop();
                  setLocale(const Locale('ar', 'AR'));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
