import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knust_scan/Components/onboarding_content.dart';
import 'package:knust_scan/Screens/Onboarding/Components/onboarding_third_screen.dart';

import '../../../Components/app_back_button.dart';
import '../../Scan Screen/scan_screen.dart';
import '../../constants.dart';

class OnboardingSecondScreen extends StatelessWidget {
  const OnboardingSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 64 * screenWidth,
        leading: AppBackButton(),
        elevation: 0.0,
        backgroundColor: backgroundColor,
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(() => const ScanScreen());
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
      body: OnboardingContent(
        pageNumber: 2,
        nextScreen: () => OnboardingThirdScreen(),
        buttonIcon: true,
        title: 'QR Code',
        message:
            'By scanning the QR code on each document, our system quickly verifies its legitimacy, providing you with immediate confirmation of its authenticity.',
        buttonText: 'Next',
        messageWidth: 320,
        imageLocation: 'assets/images/valid_cert.png',
      ),
    );
  }
}
