import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habits_app/core/localization/language.dart';

class FontConstants {
  static String fontFamily = isArabic() ? 'Tajawal' : 'Satoshi';
}

class FontWeightManager {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}

class FontSizeManager {
  static double s10 = 10.0.spMin;
  static double s11 = 11.0.spMin;
  static double s12 = 12.0.spMin;
  static double s13 = 13.0.spMin;
  static double s14 = 14.0.spMin;
  static double s16 = 16.0.spMin;
  static double s18 = 18.0.spMin;
  static double s20 = 20.0.spMin;
  static double s22 = 22.0.spMin;
  static double s24 = 24.0.spMin;
  static double s28 = 28.0.spMin;
  static double s32 = 32.0.spMin;
}
