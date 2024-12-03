import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:knust_scan/Components/app_button.dart';
import 'package:knust_scan/Models/certificate_model.dart';
import 'package:knust_scan/Screens/Certificate%20Screen/certificate_screen.dart';
import 'package:knust_scan/Screens/Forgot%20Password/forgot_password_screen.dart';
import 'package:knust_scan/Screens/Scan%20Screen/scan_screen.dart';
import 'package:knust_scan/Screens/constants.dart';
import 'package:http/http.dart' as http;
import 'package:knust_scan/Services/config.dart';

import '../../../Components/app_text_field.dart';

late final certData;

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController studentNoController = TextEditingController();

    void login() async {
      if (emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty &&
          studentNoController.text.isNotEmpty) {
        var reqBody = {
          'username': emailController.text.trim(),
          'password': passwordController.text.trim(),
          'studentNum': studentNoController.text.trim(),
          "certUserID": "66c85f96fb8357158d647828",
        };
        var response = await http.post(
          Uri.parse(checkUser),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode(reqBody),
        );

        var jsonResponse = jsonDecode(response.body);

        if (response.statusCode == 200) {
          // Get.to(() => CertificateScreen());
          print(jsonResponse['body']);
          final data = jsonResponse['body'];

          if (data != null) {
            certData = CertificateData(
              name: data[0]['name'],
              level: data[0]['level'],
              graduatingClass: data[0]['graduatingClass'],
              course: data[0]['course'],
              graduationDay: data[0]['graduationDay'],
              refNumber: data[0]['refNumber'],
            );
          }

          Get.to(() => const CertificateScreen());

          print(jsonResponse['body']);
        } else {
          print('Error message');
        }
      } else {
        print('Fields cannot be empty');
      }
    }

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.0 * screenWidth),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 60 * screenHeight),
            Center(
              child: Text(
                'Certificate Verification',
                style: TextStyle(
                  color: green,
                  fontSize: 26,
                  fontFamily: 'Pacifico',
                ),
              ),
            ),
            SizedBox(height: 57 * screenHeight),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AppTextField(
                    title: 'Email',
                    controller: emailController,
                    inputFormatter: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'[a-zA-Z0-9@.]')),
                      LengthLimitingTextInputFormatter(20),
                    ],
                    isPasswordSeen: true,
                    isTextObscured: false,
                  ),
                  SizedBox(height: 15 * screenHeight),
                  AppTextField(
                    title: 'Password',
                    controller: passwordController,
                    inputFormatter: [
                      LengthLimitingTextInputFormatter(35),
                    ],
                    isPasswordSeen: false,
                    isTextObscured: true,
                  ),
                  SizedBox(height: 15 * screenHeight),
                  AppTextField(
                    title: 'Student Number',
                    controller: studentNoController,
                    inputFormatter: [
                      LengthLimitingTextInputFormatter(8),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    isPasswordSeen: true,
                    isTextObscured: false,
                  ),
                ],
              ),
            ),
            SizedBox(height: 22 * screenHeight),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const ForgotPasswordScreen());
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: red,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ),
            SizedBox(height: 47 * screenHeight),
            InkWell(
              onTap: login,
              child: Container(
                width: 344 * screenWidth,
                height: 52 * screenHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: primary,
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Verify',
                  style: TextStyle(
                    color: white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
