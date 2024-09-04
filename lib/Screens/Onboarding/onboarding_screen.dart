import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knust_scan/Screens/Onboarding/Components/body.dart';
import 'package:knust_scan/Screens/Scan%20Screen/scan_screen.dart';
import 'package:knust_scan/Screens/constants.dart';

late double deviceWidth;
late double deviceHeight;

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: backgroundColor,
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(() => ScanScreen());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Skip',
                  style: TextStyle(
                    color: primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 4 * screenWidth),
                Icon(
                  Icons.arrow_right_alt_rounded,
                  color: primary,
                  weight: 8,
                ),
                SizedBox(width: 17 * screenWidth),
              ],
            ),
          )
        ],
      ),
      backgroundColor: backgroundColor,
      body: Body(),
    );
  }
}
