import 'package:flutter/material.dart';
import 'package:ibmhack/page2ext.dart';

class secscreen extends StatefulWidget {
  const secscreen({super.key});

  @override
  State<secscreen> createState() => _secscreenState();
}

class _secscreenState extends State<secscreen> {
  @override
  Widget build(BuildContext ctxt) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Laptops",
      home: Scaffold(
        backgroundColor: Color(0xFF1b1b1b),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(250, 150, 0, 20),
            child: Column(children: <Widget>[
              Container(
                height: 350,
                width: 1000,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0x8AFFFFFF),
                ),
                child: Row(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Align(
                            alignment: FractionalOffset.center,
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                                child: Image.asset(
                                  'assets/laptop.png',
                                  height: 270,
                                  width: 370,
                                ))),
                        Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(80, 0, 0, 10),
                            child: Text(
                              'lenovo s145 Ryzen 5',
                              style: TextStyle(
                                fontFamily: 'AndadaPro',
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  height: 300,
                  width: 1000,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0x8AFFFFFF),
                  )),
              SizedBox(
                height: 40,
              ),
              Container(
                  height: 300,
                  width: 1000,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0x8AFFFFFF),
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
