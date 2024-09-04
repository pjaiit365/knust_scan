import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knust_scan/Components/app_back_button.dart';
import 'package:knust_scan/Screens/Scan%20Screen/Components/body.dart';
import 'package:knust_scan/Screens/constants.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: backgroundColor,
        leading: const AppBackButton(),
        centerTitle: true,
        title: Text(
          'Scan',
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
              icon: Icon(
                Icons.drive_folder_upload_outlined,
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
