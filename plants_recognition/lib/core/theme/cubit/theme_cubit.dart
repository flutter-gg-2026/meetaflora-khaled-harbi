import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:plants_recognition/core/theme/app_theme.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(themeData: AppTheme.lightTheme));

  void switchTheme() {
    // Check the brightness of the current state's themeData
    // state here refers to the state of the base state class only
    if (state.themeData.brightness == Brightness.light) {
      emit(ThemeState(themeData: AppTheme.darkTheme));
    } else {
      emit(ThemeState(themeData: AppTheme.lightTheme));
    }
  }
}
