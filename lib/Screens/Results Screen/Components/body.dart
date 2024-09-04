import 'package:flutter/material.dart';
import 'package:knust_scan/Components/app_button.dart';
import 'package:knust_scan/Screens/Login%20Verification/login_verification_screen.dart';
import 'package:knust_scan/Screens/Scan%20Screen/scan_screen.dart';
import 'package:knust_scan/Screens/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 60 * screenHeight),
        Center(
          child: Text(
            'Certificate Valid!',
            style: TextStyle(
              color: green,
              fontSize: 26,
              fontFamily: 'Pacifico',
            ),
          ),
        ),
        SizedBox(height: 56 * screenHeight),
        SizedBox(
          width: 307 * screenWidth,
          child: Text(
            'QR Code scanned corresponds to a valid certificate.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColorGrey,
              fontSize: 16,
              fontFamily: 'Roboto',
            ),
          ),
        ),
        SizedBox(height: 28 * screenHeight),
        Text(
          'NB: This QR Code could be forged.',
          style: TextStyle(
            color: red,
            fontSize: 16,
            fontFamily: 'Roboto',
          ),
        ),
        SizedBox(height: 28 * screenHeight),
        SizedBox(
          width: 346 * screenWidth,
          child: Text(
            'QR Code scanned corresponds to a valid certificate. \n'
            'This certificate may not necessarily be for the individual before you. \n\n'
            'To verify certificate, user must enter student credentials.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColorGrey,
              fontSize: 16,
              fontFamily: 'Roboto',
            ),
          ),
        ),
        SizedBox(height: 62 * screenHeight),
        AppButton(
            buttonText: 'Verify Certificate',
            nextScreen: () => const LoginVerificationScreen()),
        SizedBox(height: 24 * screenHeight),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.0 * screenWidth),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Divider(color: grey),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0 * screenWidth),
                child: Text(
                  'OR',
                  style: TextStyle(
                    color: black,
                    fontSize: 15,
                  ),
                ),
              ),
              Expanded(child: Divider(color: grey)),
            ],
          ),
        ),
        SizedBox(height: 24 * screenHeight),
        AppButton(
          buttonText: 'Skip',
          nextScreen: () => ScanScreen(),
          buttonColor: const Color(0xffC2CEDA),
        ),
      ],
    );
  }
}
