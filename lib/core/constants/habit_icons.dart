import 'package:flutter/material.dart';

/// Icons available in the habit picker. Stored habits keep [IconData.codePoint];
/// resolve with [fromCodePoint] so release builds can tree-shake icon fonts.
abstract final class HabitIcons {
  static const IconData defaultIcon = Icons.task_alt;

  static const List<IconData> pickerIcons = [
    Icons.task_alt,
    Icons.fitness_center,
    Icons.book,
    Icons.water_drop,
    Icons.self_improvement,
    Icons.code,
    Icons.brush,
    Icons.shopping_basket,
    Icons.restaurant,
    Icons.access_alarm,
    Icons.home,
    Icons.work,
    Icons.message,
    Icons.medication,
  ];

  static IconData fromCodePoint(int? codePoint) {
    if (codePoint == null) return defaultIcon;
    for (final icon in pickerIcons) {
      if (icon.codePoint == codePoint) return icon;
    }
    return defaultIcon;
  }
}
