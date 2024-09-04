import 'package:get/get.dart';

class TogglePasswordController extends GetxController {
  bool _toggleState = false;
  bool get toggleState => _toggleState;

  void togglePasswordTextController() {
    if (toggleState) {
      _toggleState = false;
      print(_toggleState);
    } else {
      _toggleState = true;
      print(_toggleState);
    }
    update();
  }
}
