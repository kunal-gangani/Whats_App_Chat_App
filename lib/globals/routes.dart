import 'package:flutter/material.dart';
import 'package:whats_app_ui/views/HomeScreen/home_screen.dart';
import 'package:whats_app_ui/views/SplashScreen/splashScreen.dart';
import 'package:whats_app_ui/views/UserChat/user_chat.dart';

class Routes {
  static String splashScreen = '/';
  static String homePage = 'HomePage';
  static String userChat = 'UserChat';

  static Map<String, WidgetBuilder> myRoutes = {
    splashScreen: (context) => const SplashScreen(),
    homePage: (context) => const HomePage(),
    userChat: (context) => const UserChat(),
  };
}
