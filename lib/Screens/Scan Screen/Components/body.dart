import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knust_scan/Components/app_button.dart';
import 'package:knust_scan/Controller/scan_controller.dart';
import 'package:knust_scan/Controller/zoom_controller.dart';
import 'package:knust_scan/Screens/Results%20Screen/results_screen.dart';
import 'package:knust_scan/Screens/constants.dart';
import 'package:http/http.dart' as http;
import 'package:knust_scan/Services/config.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    ScanController scanController = Get.put(ScanController());
    ZoomController zoomController = Get.put(ZoomController());
    MobileScannerController controller = MobileScannerController();
    String certID = '';

    void checkCertValidity() async {
      try {
        var response = await http.post(Uri.parse(readCertURL),
            headers: {'Content-Type': 'application/json'},
            body: {'_id': certID});

        if (response.statusCode == 200) {
          var jsonResponse = response.body;
          // final certData = jsonResponse['data'];
        }
      } catch (e) {
        print(e.toString());
      }
    }

    return GetBuilder<ZoomController>(
      builder: (_) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 40 * screenHeight),
            Center(
              child: Text(
                'Scan QR Code',
                style: TextStyle(
                  color: black,
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 12 * screenHeight),
            SizedBox(
              width: 225 * screenWidth,
              child: Text(
                'Point your camera to the QR Code on the Certificate',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColorGrey,
                  fontFamily: 'Roboto',
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 62 * screenHeight),
            Container(
              height: 255 * screenHeight,
              width: 274 * screenWidth,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(14),
                image: const DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage(
                    'assets/images/scan_window.png',
                  ),
                ),
              ),
              alignment: Alignment.center,
              child: Container(
                height: 199 * screenHeight,
                width: 219 * screenWidth,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),

                // code to scan qr code
                // child: Padding(
                //   padding: EdgeInsets.symmetric(
                //     horizontal: screenWidth * 17.0,
                //     vertical: 8 * screenHeight,
                //   ),
                //   child: GetBuilder<ScanController>(
                //     builder: (_) {
                //       return MobileScanner(
                //         controller: controller,
                //         onDetect: (barcodes) {
                //           if (!scanController.isScanCompleted) {
                //             scanController.scan();
                //             String code = barcodes.raw.toString() ?? '---';
                //             print(code);
                //             Get.to(() => ResultsScreen())?.then(
                //               (value) {
                //                 controller.stop();
                //                 controller.dispose();
                //                 scanController.onDelete();
                //                 zoomController.onDelete();
                //               },
                //             );
                //           }
                //         },
                //       );
                //     },
                //   ),
                // ),
              ),
            ),
            SizedBox(height: 29 * screenHeight),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0 * screenWidth),
              height: 34 * screenHeight,
              width: 274 * screenWidth,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      zoomController.decreaseZoom();
                      controller.setZoomScale(zoomController.zoomValue);
                    },
                    icon: Icon(
                      Icons.do_not_disturb_on_rounded,
                      color: Color(0xff808080),
                      size: 20,
                    ),
                  ),
                  Expanded(
                    child: Slider(
                      allowedInteraction: SliderInteraction.tapAndSlide,
                      divisions: 3,
                      value: zoomController.zoomValue,
                      onChanged: (value) {
                        zoomController.updateZoom(value);
                        controller.setZoomScale(zoomController.zoomValue);
                      },
                      min: 0,
                      max: 3,
                      inactiveColor: grey,
                      activeColor: primary,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      zoomController.increaseZoom();
                      controller.setZoomScale(zoomController.zoomValue);
                    },
                    icon: Icon(
                      Icons.add_circle,
                      color: green,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 63 * screenHeight),
            AppButton(
              buttonText: 'Cancel Scanning',
              nextScreen: () => const ResultsScreen(),
            )
          ],
        );
      },
    );
  }
}
