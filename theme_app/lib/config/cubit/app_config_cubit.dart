import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_config_state.dart';

class AppConfigCubit extends Cubit<AppConfigState> {
  AppConfigCubit() : super(AppConfigInitialState()) {
    currentTheme = appLightTheme;
  }
  /**
   * Application current theme variable
   */
  ThemeData? currentTheme;
  /**
   * Dark theme variable
   */
  ThemeData appLightTheme = ThemeData(
    primaryColor: Colors.yellow,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.yellowAccent,
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.blue, fontSize: 24),
      headline1: TextStyle(color: Colors.blue, fontSize: 24),
      headline2: TextStyle(color: Colors.blue, fontSize: 24),
      bodyText2: TextStyle(color: Colors.blue, fontSize: 24),
      subtitle1: TextStyle(color: Colors.blue, fontSize: 24),
    ),
  );
  /**
   * Light theme variable
   */
  ThemeData appDarkTheme = ThemeData(
    primaryColor: Colors.purple,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.purple,
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.red, fontSize: 24),
      headline1: TextStyle(color: Colors.red, fontSize: 24),
      subtitle1: TextStyle(color: Colors.red, fontSize: 24),
    ),
  );
  /**
   * changing application theme method
   */
  void changeTheme(bool isDark) {
    if (isDark == true) {
      currentTheme = appDarkTheme;
      emit(ThemeChangedToDark());
    } else {
      currentTheme = appLightTheme;
      emit(ThemeChangedToLight());
    }
  }
}
