import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internet_speed_test_app/core/constants/color_constant.dart';
import 'package:internet_speed_test_app/core/extension/context_extension.dart';

final appBarTheme = ThemeData(
  scaffoldBackgroundColor: ColorConstant.instance.appBarTextColor,
  appBarTheme: AppBarTheme(
    backgroundColor: ColorConstant.instance.appBarColor,
    elevation: 10,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: ColorConstant.instance.appBarTextColor,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: ColorConstant.instance.appBarTextColor,
      size: 28,
    ),
    actionsIconTheme: IconThemeData(
      color: ColorConstant.instance.appBarTextColor,
      size: 24,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: ColorConstant.instance.appBarColor,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
    shadowColor: Colors.black.withOpacity(0.5),
    toolbarHeight: 60,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(25),
      ),
    ),
  ),
);


