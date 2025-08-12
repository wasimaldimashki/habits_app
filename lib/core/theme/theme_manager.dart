import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habits_app/core/theme/color_manager.dart';
import 'package:habits_app/core/theme/styles_manager.dart';
import 'package:habits_app/core/theme/values_manager.dart';
import 'package:habits_app/core/theme/font_manager.dart';

// Light Theme Configuration
ThemeData getLightApplicationTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    visualDensity: VisualDensity.standard,
    primaryColor: AppColors.primary,
    primaryColorLight: AppColors.lightPrimary,
    primaryColorDark: AppColors.darkPrimary,
    disabledColor: AppColors.grey1,
    scaffoldBackgroundColor: AppColors.lightBackground,
    splashColor: AppColors.lightPrimary,
    fontFamily: FontConstants.fontFamily,

    //** AppBar Theme **/
    appBarTheme: AppBarTheme(
      centerTitle: true,
      // color: AppColors.lightSurface,
      backgroundColor: AppColors.white,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: getRegularStyle(
          color: AppColors.lightTextPrimary, fontSize: AppSize.s16),
      iconTheme: IconThemeData(color: AppColors.lightTextPrimary),
      actionsIconTheme: IconThemeData(color: AppColors.lightTextPrimary),
    ),

    //** Card Theme **/
    cardTheme: CardThemeData(
      color: AppColors.lightSurface,
      surfaceTintColor: Colors.transparent,
      shadowColor: AppColors.lightCardShadow,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s16),
      ),
    ),

    //** Button Theme **/
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: AppColors.grey1,
      buttonColor: AppColors.primary,
      splashColor: AppColors.lightPrimary,
    ),

    //** Elevated Button Theme **/
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStatePropertyAll(
          getRegularStyle(color: AppColors.darkTextPrimary),
        ),
        shape: const WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
          ),
        ),
        backgroundColor: const WidgetStatePropertyAll(AppColors.primary),
        foregroundColor:
            const WidgetStatePropertyAll(AppColors.darkTextPrimary),
      ),
    ),

    //** Outlined Button Theme **/
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
          ),
        ),
        side: WidgetStatePropertyAll(
          BorderSide(color: AppColors.lightBorder, width: 1.0),
        ),
        foregroundColor: WidgetStatePropertyAll(AppColors.lightTextPrimary),
      ),
    ),

    //** Text Button Theme **/
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
          ),
        ),
        foregroundColor: WidgetStatePropertyAll(AppColors.primary),
      ),
    ),

    //** Input Decoration Theme **/
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.lightBackground,
      contentPadding: REdgeInsets.symmetric(
          vertical: AppPadding.p15, horizontal: AppPadding.p10),
      labelStyle: getRegularStyle(color: AppColors.lightTextSecondary),
      hintStyle: getRegularStyle(color: AppColors.lightTextSecondary),
      prefixIconColor: AppColors.darkBackground,
      suffixIconColor: AppColors.darkBackground,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s10),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s10),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s10),
        borderSide: BorderSide(color: AppColors.primary, width: 1.0),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s10),
        borderSide: BorderSide(color: AppColors.error, width: 1.0),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s10),
        borderSide: BorderSide(color: AppColors.error, width: 1.0),
      ),
    ),

    //======= Selection Text Theme =======//
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primary,
      selectionColor: AppColors.primary.withOpacity(0.5),
      selectionHandleColor: AppColors.primary,
    ),

    //** Text Theme (for default Text widgets) **/
    textTheme: TextTheme(
      displayLarge: getSemiBoldStyle(
          color: AppColors.lightTextPrimary, fontSize: FontSizeManager.s32),
      displayMedium: getSemiBoldStyle(
          color: AppColors.lightTextPrimary, fontSize: FontSizeManager.s28),
      displaySmall: getSemiBoldStyle(
          color: AppColors.lightTextPrimary, fontSize: FontSizeManager.s24),
      headlineMedium: getSemiBoldStyle(
          color: AppColors.lightTextPrimary, fontSize: FontSizeManager.s20),
      headlineSmall: getSemiBoldStyle(
          color: AppColors.lightTextPrimary, fontSize: FontSizeManager.s18),
      titleLarge: getSemiBoldStyle(
          color: AppColors.lightTextPrimary, fontSize: FontSizeManager.s16),
      bodyLarge: getRegularStyle(color: AppColors.lightTextPrimary),
      bodyMedium: getMediumStyle(color: AppColors.lightTextPrimary),
      bodySmall: getLightStyle(color: AppColors.lightTextSecondary),
      labelLarge: getMediumStyle(color: AppColors.lightTextPrimary),
      labelSmall: getRegularStyle(color: AppColors.lightTextSecondary),
    ),

    //** Bottom Navigation Bar Theme **/
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.lightSurface,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.lightTextSecondary,
      selectedLabelStyle: getMediumStyle(
          color: AppColors.primary, fontSize: FontSizeManager.s12),
      unselectedLabelStyle: getRegularStyle(
          color: AppColors.lightTextSecondary, fontSize: FontSizeManager.s12),
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
  );
}

// Dark Theme Configuration
ThemeData getDarkApplicationTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    visualDensity: VisualDensity.standard,
    primaryColor: AppColors.primary,
    primaryColorLight: AppColors.lightPrimary,
    primaryColorDark: AppColors.darkPrimary,
    disabledColor: AppColors.grey1,
    scaffoldBackgroundColor: AppColors.darkBackground,
    splashColor: AppColors.darkPrimary,
    fontFamily: FontConstants.fontFamily,

    //** AppBar Theme **/
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: AppColors.darkSurface,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: getRegularStyle(
          color: AppColors.darkTextPrimary, fontSize: AppSize.s16),
      iconTheme: IconThemeData(color: AppColors.darkTextPrimary),
      actionsIconTheme: IconThemeData(color: AppColors.darkTextPrimary),
    ),

    //** Card Theme **/
    cardTheme: CardThemeData(
      color: AppColors.darkSurface,
      surfaceTintColor: Colors.transparent,
      shadowColor: AppColors.darkCardShadow,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s16),
      ),
    ),

    //** Button Theme **/
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: AppColors.grey1,
      buttonColor: AppColors.primary,
      splashColor: AppColors.darkPrimary,
    ),

    //** Elevated Button Theme **/
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStatePropertyAll(
          getRegularStyle(color: AppColors.darkTextPrimary),
        ),
        shape: const WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
          ),
        ),
        backgroundColor: const WidgetStatePropertyAll(AppColors.primary),
        foregroundColor:
            const WidgetStatePropertyAll(AppColors.darkTextPrimary),
      ),
    ),

    //** Outlined Button Theme **/
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
          ),
        ),
        side: WidgetStatePropertyAll(
          BorderSide(color: AppColors.darkBorder, width: 1.0),
        ),
        foregroundColor: WidgetStatePropertyAll(AppColors.darkTextPrimary),
      ),
    ),

    //** Text Button Theme **/
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
          ),
        ),
        foregroundColor: WidgetStatePropertyAll(AppColors.primary),
      ),
    ),

    //** Input Decoration Theme **/
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkBackground,
      contentPadding: REdgeInsets.symmetric(
          vertical: AppPadding.p15, horizontal: AppPadding.p10),
      labelStyle: getRegularStyle(color: AppColors.darkTextSecondary),
      hintStyle: getRegularStyle(color: AppColors.darkTextSecondary),
      prefixIconColor: AppColors.darkTextSecondary,
      suffixIconColor: AppColors.darkTextSecondary,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s10),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s10),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s10),
        borderSide: BorderSide(color: AppColors.primary, width: 1.0),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s10),
        borderSide: BorderSide(color: AppColors.error, width: 1.0),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s10),
        borderSide: BorderSide(color: AppColors.error, width: 1.0),
      ),
    ),

    //======= Selection Text Theme =======//
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primary,
      selectionColor: AppColors.primary.withOpacity(0.5),
      selectionHandleColor: AppColors.primary,
    ),

    //** Text Theme (for default Text widgets) **/
    textTheme: TextTheme(
      displayLarge: getSemiBoldStyle(
          color: AppColors.darkTextPrimary, fontSize: FontSizeManager.s32),
      displayMedium: getSemiBoldStyle(
          color: AppColors.darkTextPrimary, fontSize: FontSizeManager.s28),
      displaySmall: getSemiBoldStyle(
          color: AppColors.darkTextPrimary, fontSize: FontSizeManager.s24),
      headlineMedium: getSemiBoldStyle(
          color: AppColors.darkTextPrimary, fontSize: FontSizeManager.s20),
      headlineSmall: getSemiBoldStyle(
          color: AppColors.darkTextPrimary, fontSize: FontSizeManager.s18),
      titleLarge: getSemiBoldStyle(
          color: AppColors.darkTextPrimary, fontSize: FontSizeManager.s16),
      bodyLarge: getRegularStyle(color: AppColors.darkTextPrimary),
      bodyMedium: getMediumStyle(color: AppColors.darkTextPrimary),
      bodySmall: getLightStyle(color: AppColors.darkTextSecondary),
      labelLarge: getMediumStyle(color: AppColors.darkTextPrimary),
      labelSmall: getRegularStyle(color: AppColors.darkTextSecondary),
    ),

    //** Bottom Navigation Bar Theme **/
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.darkSurface,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.darkTextSecondary,
      selectedLabelStyle: getMediumStyle(
          color: AppColors.primary, fontSize: FontSizeManager.s12),
      unselectedLabelStyle: getRegularStyle(
          color: AppColors.darkTextSecondary, fontSize: FontSizeManager.s12),
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
  );
}
