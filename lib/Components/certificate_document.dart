import 'package:flutter/material.dart';

import '../Screens/constants.dart';

class CertificateDocument extends StatelessWidget {
  final String name;
  final String level;
  final String graduatingClass;
  final String course;
  final int refNumber;
  final String graduatingDay;
  const CertificateDocument({
    super.key,
    required this.name,
    required this.level,
    required this.graduatingClass,
    required this.course,
    required this.refNumber,
    required this.graduatingDay,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Container(
            width: 366 * screenWidth,
            height: 620 * screenHeight,
            decoration: BoxDecoration(
              color: peach,
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/wavy_lines.png'),
                  opacity: .025),
            ),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        opacity: .11,
                        alignment: Alignment.center,
                        image: AssetImage(
                          'assets/images/knust_logo.png',
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: screenHeight * 5.0,
                      bottom: 5 * screenHeight,
                      left: 25 * screenWidth,
                      right: 25 * screenWidth),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/knust_logo.png',
                            height: 75 * screenHeight,
                            width: 75 * screenWidth,
                            fit: BoxFit.fill,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'KWAME NKRUMAH',
                                style: TextStyle(
                                  color: certBlack,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 21,
                                ),
                              ),
                              Text(
                                'University of Science and Technology',
                                style: TextStyle(
                                  color: certRed,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 10.4,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 17 * screenHeight),
                      Text(
                        'This is to certify that',
                        style: TextStyle(
                          color: red,
                          fontSize: 40,
                          fontFamily: 'Palace',
                        ),
                      ),
                      SizedBox(height: 5 * screenHeight),
                      Text(
                        name,
                        style: TextStyle(
                          color: black,
                          fontSize: 45,
                          fontFamily: 'Palace',
                        ),
                      ),
                      SizedBox(height: 25 * screenHeight),
                      Text(
                        'Having pursued a prescribed course of study, \n'
                        'and having passed the requisite examinations this $graduatingDay \n'
                        'has been duly admitted by the University to the Degree of',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 2.2 * screenHeight,
                          color: black,
                          fontSize: 9.2,
                        ),
                      ),
                      SizedBox(height: 20 * screenHeight),
                      Text(
                        level,
                        style: TextStyle(
                          color: black,
                          fontSize: 45,
                          fontFamily: 'Palace',
                        ),
                      ),
                      Text(
                        '($course)',
                        style: TextStyle(
                          height: 2.2 * screenHeight,
                          color: black,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 20 * screenHeight),
                      Text(
                        '$graduatingClass HONOURS',
                        style: TextStyle(
                          color: red,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 22 * screenHeight),
                      Text(
                        'Given under our hand',
                        style: TextStyle(
                          height: 2.2 * screenHeight,
                          color: black,
                          fontSize: 9.2,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        width: double.infinity,
                        height: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          // footer image here,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Signature'),
                                    Text(
                                      'Vice-Chancellor',
                                      style: TextStyle(
                                        fontSize: 7,
                                        color: black,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Signature'),
                                    Text(
                                      'Registrar',
                                      style: TextStyle(
                                        fontSize: 7,
                                        color: black,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Student Registration No',
                                      style: TextStyle(
                                        fontSize: 7,
                                        color: black,
                                      ),
                                    ),
                                    SizedBox(height: 4 * screenHeight),
                                    Text(
                                      refNumber.toString(),
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 4 * screenHeight),
                                    Container(
                                      height: 50 * screenHeight,
                                      width: 50 * screenWidth,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: red,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'assets/images/qr_code.png',
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              'Scan code on reverse to authenticate that this is a genuine paper',
                              style: TextStyle(
                                fontSize: 6.5,
                                color: black,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
