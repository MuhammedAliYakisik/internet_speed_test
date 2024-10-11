import 'package:flutter/material.dart';
import 'package:internet_speed_test_app/core/constants/color_constant.dart';
import 'package:internet_speed_test_app/core/constants/string_constant.dart';
import 'package:internet_speed_test_app/feature/views/app_view.dart';
import 'package:internet_speed_test_app/feature/views/history_view.dart';
import 'package:internet_speed_test_app/feature/views/settings_view.dart';
import 'package:lottie/lottie.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-badge.widget.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

class SpeedTestView extends StatefulWidget {
  const SpeedTestView({super.key});

  @override
  State<SpeedTestView> createState() => _SpeedTestViewState();
}

class _SpeedTestViewState extends State<SpeedTestView> with TickerProviderStateMixin {
  MotionTabBarController? _motionTabBarController;


  @override
  void initState() {
    super.initState();
    _motionTabBarController = MotionTabBarController(
      initialIndex: 1,
      length: 4,
      vsync: this,
    );

  }

  @override
  void dispose() {

    super.dispose();
    _motionTabBarController!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: _buildAppBar(title: StringConstant.instance.appBarText, icon: Icons.wifi),

      body: SafeArea(
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: _motionTabBarController,
            children: [
          Container(
          width: double.infinity,
            height: double.maxFinite,
            decoration: _backgroundContainerBoxDecoration(),

            child: Center(
              child: Column(
                children: [
                  Text("asd")
                ],
              ),
            ),
          ),
              SettingsView(),
              HistoryView(),

            ],
          ),


          bottomNavigationBar: MotionTabBar(
            controller: _motionTabBarController,
            initialSelectedTab: "Speed Test",
            labels: const ["History", "Speed Test", "Settings"],
            icons: const [Icons.history, Icons.wifi, Icons.settings],
            tabSize: 50,
            tabBarHeight: 55,
            textStyle: const TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            tabIconColor: Colors.white,
            tabIconSize: 28.0,
            tabIconSelectedSize: 26.0,
            tabSelectedColor: Colors.yellow,
            tabIconSelectedColor: Colors.blue,
            tabBarColor: ColorConstant.instance.appBarColor,
              onTabItemSelected: (index){
                setState(() {
                  _motionTabBarController?.index = index;
                });
              }
          )

        ),
      ),
      );

  }

  BoxDecoration _backgroundContainerBoxDecoration() {
    return BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorConstant.instance.appBarTextColor,
                ColorConstant.instance.speedTestViewColor,

              ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
            );
  }

  AppBar _buildAppBar({required String title, required IconData icon}) {
    return AppBar(
      title: Text(title),
      leading: LottieBuilder.asset("assets/animation/wifi.json",repeat: true,reverse: true,)
    );
  }
}
