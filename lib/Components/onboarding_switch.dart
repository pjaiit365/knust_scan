import 'package:flutter/material.dart';

import '../Screens/constants.dart';

class OnboardingSwitch extends StatelessWidget {
  int pageNumber;
  OnboardingSwitch({
    this.pageNumber = 1,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 8 * screenWidth,
          height: 8 * screenHeight,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: pageNumber == 1 ? primary : grey),
        ),
        SizedBox(width: 11 * screenWidth),
        Container(
          width: 8 * screenWidth,
          height: 8 * screenHeight,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: pageNumber == 2 ? primary : grey),
        ),
        SizedBox(width: 11 * screenWidth),
        Container(
          width: 8 * screenWidth,
          height: 8 * screenHeight,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: pageNumber == 3 ? primary : grey),
        ),
      ],
    );
  }
}
