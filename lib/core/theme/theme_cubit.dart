import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.light);

  void toggleTheme() {
    emit(state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light);
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    try {
      return ThemeMode.values.firstWhere((e) => e.toString() == json['value']);
    } catch (_) {
      return ThemeMode.light;
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return {'value': state.toString()};
  }
}
