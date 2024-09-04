import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanController extends GetxController {
  bool _isScanCompleted = false;
  bool get isScanCompleted => _isScanCompleted;

  void scan() {
    if (!_isScanCompleted) {
      _isScanCompleted = true;
      print(_isScanCompleted);
    }
  }
}
