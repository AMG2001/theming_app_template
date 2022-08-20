import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_app/config/cubit/app_config_cubit.dart';
import 'package:theme_app/home_page.dart';
import 'config/cubit/app_config_state.dart';

void main() {
  runApp(ThemesApp());
}

class ThemesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppConfigCubit>(
      create: (context) => AppConfigCubit(),
      child: BlocBuilder<AppConfigCubit, AppConfigState>(
        builder: (context, state) {
          return MaterialApp(
              home: HomePage(),
              title: "Theming App",
              theme: BlocProvider.of<AppConfigCubit>(context).currentTheme);
        },
      ),
    );
  }
}
