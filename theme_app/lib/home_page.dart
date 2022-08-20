import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_app/config/cubit/app_config_cubit.dart';

import 'config/cubit/app_config_state.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            Switch(
                value: _isDark,
                onChanged: (newVal) {
                  setState(() {
                    /**
                           * Change current value of Switch and Also UI
                           */
                    _isDark = newVal;
                    print("value of switch dark mode : $_isDark");
                    /**
                           * Change the value of CurrentTheme in
                           */
                    BlocProvider.of<AppConfigCubit>(context)
                        .changeTheme(newVal);
                  });
                }),
          ],
        ),
      ),
    );
  }
}
