

import 'package:flutter/material.dart';

import 'package:namit_s_application1/presentation/iphone_14_ten_screen/iphone_14_ten_screen.dart';
import 'package:namit_s_application1/presentation/iphone_14_sixteen_screen/iphone_14_sixteen_screen.dart';
import 'package:namit_s_application1/presentation/iphone_14_seventeen_screen/iphone_14_seventeen_screen.dart';
import 'package:namit_s_application1/presentation/iphone_14_nine_screen/iphone_14_nine_screen.dart';
import 'package:namit_s_application1/presentation/iphone_14_fourteen_screen/iphone_14_fourteen_screen.dart';
import 'package:namit_s_application1/presentation/iphone_14_five_screen/iphone_14_five_screen.dart';
import 'package:namit_s_application1/presentation/iphone_14_one_container_screen/iphone_14_one_container_screen.dart';
import 'package:namit_s_application1/presentation/iphone_14_three_page/iphone_14_three_page.dart';
import 'package:namit_s_application1/presentation/iphone_14_twenty_page/iphone_14_twenty_page.dart';
import 'package:namit_s_application1/presentation/iphone_14_two_screen/iphone_14_two_screen.dart';
import 'package:namit_s_application1/presentation/iphone_14_three_tab_container_screen/iphone_14_three_tab_container_screen.dart';
import 'package:namit_s_application1/presentation/iphone_14_eight_tab_container_screen/iphone_14_eight_tab_container_screen.dart';
import 'package:namit_s_application1/presentation/iphone_14_seven_screen/iphone_14_seven_screen.dart';
import 'package:namit_s_application1/presentation/iphone_14_fifteen_tab_container_screen/iphone_14_fifteen_tab_container_screen.dart';
import 'package:namit_s_application1/presentation/iphone_14_twentyeight_tab_container_screen/iphone_14_twentyeight_tab_container_screen.dart';
import 'package:namit_s_application1/presentation/iphone_14_nineteen_tab_container_screen/iphone_14_nineteen_tab_container_screen.dart';
import 'package:namit_s_application1/presentation/iphone_14_twentytwo_screen/iphone_14_twentytwo_screen.dart';
import 'package:namit_s_application1/presentation/iphone_14_twentythree_tab_container_screen/iphone_14_twentythree_tab_container_screen.dart';
import 'package:namit_s_application1/presentation/iphone_14_twentyfive_screen/iphone_14_twentyfive_screen.dart';
import 'package:namit_s_application1/presentation/iphone_14_twentysix_screen/iphone_14_twentysix_screen.dart';
import 'package:namit_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

import '../presentation/event_calendar.dart';
import '../presentation/iphone_14_one_page/iphone_14_one_page.dart';

class AppRoutes {
  static const String iphone14TenScreen = '/iphone_14_ten_screen';
  static const String event_calender = '/event_calender';
  static const String iphone14SixteenScreen = '/iphone_14_sixteen_screen';

  static const String iphone14SeventeenScreen = '/iphone_14_seventeen_screen';

  static const String iphone14NineScreen = '/iphone_14_nine_screen';

  static const String iphone14FourteenScreen = '/iphone_14_fourteen_screen';

  static const String iphone14FiveScreen = '/iphone_14_five_screen';

  static const String iphone14OnePage = '/iphone_14_one_page';

  static const String iphone14OneContainerScreen =
      '/iphone_14_one_container_screen';

  static const String iphone14TwoScreen = '/iphone_14_two_screen';

  static const String iphone14ThreePage = '/iphone_14_three_page';

  static const String iphone14ThreeTabContainerScreen =
      '/iphone_14_three_tab_container_screen';

  static const String iphone14FourPage = '/iphone_14_four_page';

  static const String iphone14SixPage = '/iphone_14_six_page';

  static const String iphone14ElevenPage = '/iphone_14_eleven_page';

  static const String iphone14EightPage = '/iphone_14_eight_page';

  static const String iphone14EightTabContainerScreen =
      '/iphone_14_eight_tab_container_screen';

  static const String iphone14TwelvePage = '/iphone_14_twelve_page';

  static const String iphone14ThirteenPage = '/iphone_14_thirteen_page';

  static const String iphone14SevenScreen = '/iphone_14_seven_screen';

  static const String iphone14FifteenPage = '/iphone_14_fifteen_page';

  static const String iphone14FifteenTabContainerScreen =
      '/iphone_14_fifteen_tab_container_screen';

  static const String iphone14TwentyPage = '/iphone_14_twenty_page';

  static const String iphone14TwentyeightPage = '/iphone_14_twentyeight_page';

  static const String iphone14TwentyeightTabContainerScreen =
      '/iphone_14_twentyeight_tab_container_screen';

  static const String iphone14NineteenPage = '/iphone_14_nineteen_page';

  static const String iphone14NineteenTabContainerScreen =
      '/iphone_14_nineteen_tab_container_screen';



  static const String iphone14TwentyonePage = '/iphone_14_twentyone_page';

  static const String iphone14TwentytwoScreen = '/iphone_14_twentytwo_screen';

  static const String iphone14TwentythreePage = '/iphone_14_twentythree_page';

  static const String iphone14TwentythreeTabContainerScreen =
      '/iphone_14_twentythree_tab_container_screen';

  static const String iphone14TwentyfourPage = '/iphone_14_twentyfour_page';

  static const String iphone14TwentyfiveScreen = '/iphone_14_twentyfive_screen';

  static const String iphone14TwentysixScreen = '/iphone_14_twentysix_screen';

  static const String iphone14TwentysevenPage = '/iphone_14_twentyseven_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {

    event_calender:(context)=>EventCalendarScreen (),
    iphone14TwentyPage:(context)=>Iphone14TwentyPage(),
    iphone14ThreePage:(conext)=>Iphone14ThreePage(),
    iphone14TenScreen: (context) => Iphone14TenScreen(),
    iphone14SixteenScreen: (context) => Iphone14SixteenScreen(),
    iphone14SeventeenScreen: (context) => Iphone14SeventeenScreen(),
    iphone14NineScreen: (context) => Iphone14NineScreen(),
    iphone14FourteenScreen: (context) => Iphone14FourteenScreen(),
    iphone14FiveScreen: (context) => Iphone14FiveScreen(),
    iphone14OneContainerScreen: (context) => Iphone14OneContainerScreen(),
   iphone14OnePage:(context)=>Iphone14OnePage(),
    iphone14TwoScreen: (context) => Iphone14TwoScreen(),
    iphone14ThreeTabContainerScreen: (context) =>
        Iphone14ThreeTabContainerScreen(),
    iphone14EightTabContainerScreen: (context) =>
        Iphone14EightTabContainerScreen(),
    iphone14SevenScreen: (context) => Iphone14SevenScreen(),
    iphone14FifteenTabContainerScreen: (context) =>
        Iphone14FifteenTabContainerScreen(),
    iphone14TwentyeightTabContainerScreen: (context) =>
        Iphone14TwentyeightTabContainerScreen(),
    iphone14NineteenTabContainerScreen: (context) =>
        Iphone14NineteenTabContainerScreen(),
    iphone14TwentytwoScreen: (context) => Iphone14TwentytwoScreen(),
    iphone14TwentythreeTabContainerScreen: (context) =>
        Iphone14TwentythreeTabContainerScreen(),
    iphone14TwentyfiveScreen: (context) => Iphone14TwentyfiveScreen(),
    iphone14TwentysixScreen: (context) => Iphone14TwentysixScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
