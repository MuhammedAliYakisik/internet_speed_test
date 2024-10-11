import 'dart:ui';

class ColorConstant{
  static final ColorConstant _instance = ColorConstant._init();
  static ColorConstant get instance => _instance;
  ColorConstant._init();

  final whiteColor= Color(0xFFE7E723);

  //app_bar colors
  final appBarTextColor = const Color(0xFF29F2F2);
  final appBarColor = const Color(0xFF021859);


  // speed_test_view colors
  final speedTestViewOtherColor = const Color(0xFF021859);
  final speedTestViewColor = const Color(0xFF010440);

  // settings_view colors


  // history_view colors

}