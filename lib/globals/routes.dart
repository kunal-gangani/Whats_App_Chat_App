import 'package:flutter/material.dart';
import 'package:whats_app_ui/views/HomeScreen/home_screen.dart';
import 'package:whats_app_ui/views/SplashScreen/splashScreen.dart';

class Routes {
  static String splashScreen = '/';
  static String homePage = 'HomePage';

  static Map<String, WidgetBuilder> myRoutes = {
    splashScreen: (context) => const SplashScreen(),
    homePage: (context) => const HomePage(),
  };
}
