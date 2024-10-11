import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_speed_test_app/core/constants/app_bar_constant.dart';
import 'package:internet_speed_test_app/feature/views/speed_test_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: appBarTheme,
        home: SpeedTestView()
    );
  }
}