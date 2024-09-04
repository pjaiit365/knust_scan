import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knust_scan/Screens/Results Screen/Components/body.dart';

import '../Scan Screen/scan_screen.dart';
import '../constants.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 64 * screenWidth,
        leading: IconButton(
            onPressed: () {
              Get.to(() => ScanScreen(), popGesture: false);
            },
            iconSize: 26,
            highlightColor: highlightColor,
            icon: Icon(
              Icons.home_filled,
              color: primary,
            )),
        elevation: 0.0,
        backgroundColor: backgroundColor,
        centerTitle: true,
        title: Text(
          'Results',
          style: TextStyle(
            color: black,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Body(),
      backgroundColor: backgroundColor,
    );
  }
}
