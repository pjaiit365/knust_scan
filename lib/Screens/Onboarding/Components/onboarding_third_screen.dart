import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knust_scan/Components/app_back_button.dart';
import 'package:knust_scan/Components/onboarding_content.dart';
import 'package:knust_scan/Screens/Scan%20Screen/scan_screen.dart';

import '../../constants.dart';

class OnboardingThirdScreen extends StatelessWidget {
  const OnboardingThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBackButton(),
        elevation: 0.0,
        backgroundColor: backgroundColor,
      ),
      backgroundColor: backgroundColor,
      body: OnboardingContent(
        pageNumber: 3,
        nextScreen: () => const ScanScreen(),
        buttonIcon: true,
        title: 'Trust & Integrity',
        message:
            'This tool also aids potential employers in verifying the credentials of prospective employees, maintaining trust and integrity in academic and professional qualifications.',
        buttonText: 'Next',
        messageWidth: 320,
        imageLocation: 'assets/images/approve.png',
      ),
    );
  }
}
