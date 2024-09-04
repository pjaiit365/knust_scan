import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knust_scan/Screens/Onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    // const SystemUiOverlayStyle(
    // statusBarColor: Colors.white,
    // statusBarIconBrightness: Brightness.dark,
    // systemNavigationBarColor: Colors.white,
    // systemNavigationBarIconBrightness: Brightness.dark,
    // ),
    // );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Inter'),
      title: 'KNUST Scan',
      home: const OnboardingScreen(),
    );
  }
}
