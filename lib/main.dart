import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Python Bashers",
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            width: 1200,
            height: 650,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset('assets/Group 2.svg'),
                    ),
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  "ONLINE SHOPPING",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'AndadaPro',
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Image.asset(
                  'assets/hand.png',
                  scale: lerpDouble(2, 0, 0),
                ),
                const SizedBox(height: 8),
                Text(
                  "WELCOMES YOU",
                  style: TextStyle(
                    fontFamily: 'monomaniacOne',
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
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
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
