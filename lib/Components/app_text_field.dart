import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:knust_scan/Controller/toggle_password_controller.dart';

import '../Screens/constants.dart';

class AppTextField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final List<TextInputFormatter> inputFormatter;
  bool isTextObscured;
  bool isPasswordSeen;
  AppTextField({
    required this.inputFormatter,
    this.isTextObscured = false,
    this.isPasswordSeen = false,
    super.key,
    required this.controller,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    TogglePasswordController togglePasswordController =
        Get.put(TogglePasswordController());

    return GetBuilder<TogglePasswordController>(
      builder: (_) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: black,
                fontSize: 16,
                fontFamily: 'Roboto',
              ),
            ),
            SizedBox(height: 9 * screenHeight),
            TextField(
              controller: controller,
              inputFormatters: inputFormatter,
              cursorColor: primary,
              style: TextStyle(
                color: black,
                fontSize: 16,
                fontFamily: 'Roboto',
              ),
              decoration: InputDecoration(
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: BorderSide(color: red, width: 2 * screenWidth),
                ),
                fillColor: white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide:
                      BorderSide(color: primary, width: 2 * screenWidth),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: isTextObscured
                    ? GestureDetector(
                        onTap: () {
                          togglePasswordController
                              .togglePasswordTextController();
                        },
                        child: Icon(
                          togglePasswordController.toggleState
                              ? Icons.visibility_rounded
                              : Icons.visibility_off_rounded,
                          color: togglePasswordController.toggleState
                              ? primary
                              : grey,
                        ),
                      )
                    : null,
              ),
              obscureText:
                  isTextObscured ? togglePasswordController.toggleState : false,
            ),
          ],
        );
      },
    );
  }
}
