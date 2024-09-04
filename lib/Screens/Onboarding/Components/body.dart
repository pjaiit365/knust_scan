import 'package:flutter/material.dart';
import 'package:knust_scan/Components/onboarding_content.dart';
import 'package:knust_scan/Screens/Onboarding/Components/onboarding_second_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingContent(
        nextScreen: () => const OnboardingSecondScreen(),
        title: 'Welcome to KNUST Scan',
        message:
            'Welcome to our Document Verification Application, designed to ensure the authenticity of certificates and transcripts.',
        buttonText: "Let's Go",
        messageWidth: 324);
  }
}
