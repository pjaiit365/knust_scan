import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knust_scan/Screens/Onboarding/Components/onboarding_second_screen.dart';
import 'package:knust_scan/Screens/Scan%20Screen/scan_screen.dart';

import '../Screens/constants.dart';
import 'onboarding_switch.dart';

class OnboardingContent extends StatelessWidget {
  final String title;
  final String message;
  final String buttonText;
  final double messageWidth;
  final nextScreen;
  bool buttonIcon;
  int pageNumber;
  OnboardingContent({
    super.key,
    required this.title,
    required this.message,
    required this.buttonText,
    required this.messageWidth,
    this.buttonIcon = false,
    this.pageNumber = 1,
    required this.nextScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 85 * screenHeight),
        Center(
          child: Text(
            title,
            style: TextStyle(
              color: primary,
              fontSize: 26,
              fontFamily: 'Pacifico',
            ),
          ),
        ),
        SizedBox(height: 310 * screenHeight),
        SizedBox(
          width: messageWidth * screenWidth,
          height: 91 * screenHeight,
          child: Center(
            child: Text(
              message,
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColorGrey,
                fontSize: 16,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ),
        SizedBox(height: 43 * screenHeight),
        OnboardingSwitch(pageNumber: pageNumber),
        SizedBox(height: 26 * screenHeight),
        InkWell(
          onTap: () {
            Get.to(nextScreen);
          },
          child: Container(
            width: 344 * screenWidth,
            height: 52 * screenHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: primary,
            ),
            alignment: Alignment.center,
            child: buttonIcon
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        buttonText,
                        style: TextStyle(
                          color: white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 5.25 * screenWidth),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        weight: 8,
                        color: white,
                      )
                    ],
                  )
                : Text(
                    buttonText,
                    style: TextStyle(
                      color: white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
          ),
        )
      ],
    );
  }
}
