import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Components/app_back_button.dart';
import '../Certificate Screen/Components/body.dart';
import '../Scan Screen/scan_screen.dart';
import '../constants.dart';

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: backgroundColor,
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
        centerTitle: true,
        title: Text(
          'Verify Document',
          style: TextStyle(
            color: black,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              iconSize: 26,
              highlightColor: highlightColor,
              icon: Icon(
                Icons.file_download_outlined,
                color: primary,
                size: 26,
              )),
          SizedBox(width: 17 * screenWidth),
        ],
      ),
      backgroundColor: backgroundColor,
      body: const Body(),
    );
  }
}
