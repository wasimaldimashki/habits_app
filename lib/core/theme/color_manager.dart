import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xff025EC4);
  static const Color secondary = Color(0xff020764);
  static const Color lightPrimary = Color(0xffF0C81D);
  static const Color darkPrimary = Color(0xffd17d11);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color black = Color.fromRGBO(0, 0, 0, 1);
  static const Color accent = Color(0xffF0C81D);

  static const Color lightBackground = Color.fromARGB(255, 243, 248, 253);
  static const Color lightSurface = Colors.white;
  static const Color lightTextPrimary = Colors.black87;
  static const Color lightTextSecondary = Color(0xff737477);
  static const Color lightBorder = Color(0xFFD1D5DB);
  static const Color lightDivider = Color(0xFFD1D5DB);
  static const Color lightCardShadow = Color(0x1A000000);

  static const Color darkBackground = Color(0xff121212);
  static const Color darkSurface = Color(0xff1E1E1E);
  static const Color darkTextPrimary = Colors.white;
  static const Color darkTextSecondary = Colors.white;
  static const Color darkBorder = Color(0xff333333);
  static const Color darkDivider = Color(0xff333333);
  static const Color darkCardShadow = Colors.black;

  static const Color grey1 = Color(0xff707070);
  static const Color grey2 = Color(0xff797979);
  static const Color error = Color(0xffe61f34);
  static const Color successColor = Color(0xFF4CAF50);
  static const Color errorColor = Color(0xFFEF233C);
  static const Color warningColor = Color(0xFFFACC15);
  static const Color infoColor = Color(0xFF38BDF8);

  static Color getBackgroundColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightBackground
        : darkBackground;
  }

  static Color getSurfaceColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightSurface
        : darkSurface;
  }

  static Color getTextPrimaryColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightTextPrimary
        : darkTextPrimary;
  }

  static Color getTextSecondaryColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightTextSecondary
        : darkTextSecondary;
  }

  static Color getBorderColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightBorder
        : darkBorder;
  }

  static Color getDividerColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightDivider
        : darkDivider;
  }

  static Color getCardShadowColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightCardShadow
        : darkCardShadow;
  }

  static Color getBackgroundNavBar(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? Colors.white
        : darkBorder;
  }
}
