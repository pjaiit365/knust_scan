import 'package:get/get.dart';

class ZoomController extends GetxController {
  double _zoomValue = 0.0;
  double get zoomValue => _zoomValue;
  bool _torchState = false;
  bool get torchState => _torchState;

  void increaseZoom() {
    if (_zoomValue >= 0 && _zoomValue != 3) {
      _zoomValue += 1;
      update();
      print(_zoomValue);
    }
  }

  void decreaseZoom() {
    if (_zoomValue <= 3 && _zoomValue != 0) {
      _zoomValue -= 1;
      update();
      print(_zoomValue);
    }
  }

  void updateZoom(double value) {
    _zoomValue = value;
    update();
  }

  void torchToggle() {
    if (_torchState) {
      _torchState = false;
    } else {
      _torchState = true;
    }
    update();
  }
}
