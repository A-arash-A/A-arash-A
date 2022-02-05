import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TheAnimation extends StatelessWidget {
  final AnimationController controller;
  TheAnimation({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/json/logo_splash/logo_splash.json',
      // fit: BoxFit.fill,
    );
  }
}
