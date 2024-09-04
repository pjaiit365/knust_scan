import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Screens/constants.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final Widget Function() nextScreen;
  Color buttonColor;
  Color buttonTextColor;
  AppButton({
    super.key,
    required this.buttonText,
    required this.nextScreen,
    this.buttonColor = primary,
    this.buttonTextColor = white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(nextScreen);
      },
      child: Container(
        width: 344 * screenWidth,
        height: 52 * screenHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: buttonColor,
        ),
        alignment: Alignment.center,
        child: Text(
          buttonText,
          style: TextStyle(
            color: buttonTextColor,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
