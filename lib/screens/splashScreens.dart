import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ems/screens/homeScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash: "assets/images/arclogo.jpg", nextScreen: const HomeScreen());
  }
}
