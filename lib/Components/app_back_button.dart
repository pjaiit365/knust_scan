import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Screens/constants.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Get.back();
        },
        highlightColor: highlightColor,
        iconSize: 26,
        icon: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: primary,
          weight: 12,
        ));
  }
}
