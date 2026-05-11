import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_app/core/localization/localization_cubit.dart';
import 'package:habits_app/core/theme/color_manager.dart';
import 'package:habits_app/core/theme/font_manager.dart';
import 'package:habits_app/core/theme/styles_manager.dart';
import 'package:habits_app/core/theme/values_manager.dart';
import 'package:habits_app/generated/l10n.dart';

void showLanguageDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s16),
        ),
        title: Text(
          S.of(context).change_language,
          style: getSemiBoldStyle(
            color: AppColors.getTextPrimaryColor(context),
            fontSize: FontSizeManager.s18,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Text('🇸🇦', style: TextStyle(fontSize: 24)),
              title: Text(
                S.of(context).arabic,
                style: getMediumStyle(
                  color: AppColors.getTextPrimaryColor(context),
                  fontSize: FontSizeManager.s16,
                ),
              ),
              onTap: () {
                context.read<LocalizationCubit>().setLocale(const Locale('ar'));
                Navigator.of(dialogContext).pop();
              },
            ),
            ListTile(
              leading: const Text('🇺🇸', style: TextStyle(fontSize: 24)),
              title: Text(
                S.of(context).english,
                style: getMediumStyle(
                  color: AppColors.getTextPrimaryColor(context),
                  fontSize: FontSizeManager.s16,
                ),
              ),
              onTap: () {
                context.read<LocalizationCubit>().setLocale(const Locale('en'));
                Navigator.of(dialogContext).pop();
              },
            ),
          ],
        ),
      );
    },
  );
}
