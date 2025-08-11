import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habits_app/core/theme/font_manager.dart';
import 'package:habits_app/core/localization/language.dart';

//** Prinmary Private Function **/
TextStyle _getTextStyle({
  required double fontSize,
  required FontWeight weight,
  required Color color,
}) {
  return isArabic()
      ? GoogleFonts.tajawal(
          fontSize: fontSize,
          fontWeight: weight,
          color: color,
        )
      : GoogleFonts.plusJakartaSans(
          fontSize: fontSize,
          fontWeight: weight,
          color: color,
        );
}

//** Regular style ** //
TextStyle getRegularStyle({required Color color, double? fontSize}) {
  return _getTextStyle(
    fontSize: fontSize ?? FontSizeManager.s12,
    weight: FontWeightManager.regular,
    color: color,
  );
}

//** Meduim style ** //
TextStyle getMediumStyle({
  required Color color,
  double? fontSize,
}) {
  return _getTextStyle(
    fontSize: fontSize ?? FontSizeManager.s13,
    weight: FontWeightManager.medium,
    color: color,
  );
}

//** Light style ** //
TextStyle getLightStyle({required Color color, double? fontSize}) {
  return _getTextStyle(
    fontSize: fontSize ?? FontSizeManager.s12,
    weight: FontWeightManager.regular,
    color: color,
  );
}

//** Bold style ** //
TextStyle getBoldStyle({required Color color, required double fontSize}) {
  return _getTextStyle(
    fontSize: fontSize,
    weight: FontWeightManager.bold,
    color: color,
  );
}

//** SemiBold style ** //
TextStyle getSemiBoldStyle({required Color color, required double fontSize}) {
  return _getTextStyle(
    fontSize: fontSize,
    weight: FontWeightManager.semiBold,
    color: color,
  );
}
