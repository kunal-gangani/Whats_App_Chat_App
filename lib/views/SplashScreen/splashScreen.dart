import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:whats_app_ui/globals/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routes.homePage);
    });
    return Scaffold(
      body: Center(
        child:
            Lottie.asset("lib/views/SplashScreen/assets/splash_animation.json"),
      ),
    );
  }
}
