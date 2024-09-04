import 'package:flutter/material.dart';
import 'package:knust_scan/Components/app_back_button.dart';
import 'package:knust_scan/Screens/Login%20Verification/Components/body.dart';

import '../constants.dart';

class LoginVerificationScreen extends StatelessWidget {
  const LoginVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 64 * screenWidth,
        leading: AppBackButton(),
        elevation: 0.0,
        backgroundColor: backgroundColor,
        centerTitle: true,
        title: Text(
          'Verify Document',
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
