import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dart:ui';

import 'package:ibmhack/page2.dart';
import 'package:ibmhack/page2ext.dart';
// ignore: import_of_legacy_library_into_null_safe
//import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(name());

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  final String assetName = "assets/Group 2.svg";
  final _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext ctxt) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Python Bashers",
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: PageView(
          pageSnapping: false,
          controller: _controller,
          scrollDirection: Axis.vertical,
          children: [
            Scaffold(
              backgroundColor: Color(0xFF1b1b1b),
              body: Center(
                child: Container(
                    width: 1390,
                    height: 650,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: <Widget>[
                            const SizedBox(height: 50),
                            Center(
                              child: Container(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: SvgPicture.asset('assets/Group 2.svg'),
                                ),
                              ),
                            ),
                            const SizedBox(height: 100),
                            Text(
                              "AI Based Personalized Product\nRecommendation System",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'AndadaPro',
                                fontSize: 48,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 150),
                            // Image.asset(
                            //   'assets/hand.png',
                            //   scale: lerpDouble(2, 0, 0),
                            // ),
                            //const SizedBox(height: 8),
                            // Text(
                            //   "WELCOMES YOU",
                            //   style: TextStyle(
                            //     fontFamily: 'monomaniacOne',
                            //     fontSize: 48,
                            //     fontWeight: FontWeight.bold,
                            //   ),
                            // ),
                            //const SizedBox(height: 8),
                            ElevatedButton(
                              child: Text(
                                'Search Products',
                                style: TextStyle(
                                  fontFamily: 'AndadaPro',
                                  fontSize: 48,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                fixedSize: Size(500, 96),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              onPressed: () {
                                _controller.animateToPage(1,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.ease);
                              },
                            ),
                          ],
                        ),
                        Image.asset(
                          'aionly.png',
                          height: 300,
                          width: 300,
                        )
                      ],
                    )),
              ),
            ),
            second(),
          ],
        ),
      ),
    );
  }
}
