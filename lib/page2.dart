//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ibmhack/page2ext.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext ctxt) {
    return Scaffold(
      backgroundColor: Color(0xFF1b1b1b),
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/bg.jpg"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Padding(
            padding: EdgeInsets.fromLTRB(0, 42, 0, 20),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 100,
                    ),
                    buttonContainer('assets/laptop.png', "laptop", ctxt1: ctxt),
                    const SizedBox(
                      width: 30,
                    ),
                    buttonContainer('assets/mobile.png', "mobile",
                        bot: 40, ctxt1: ctxt),
                    const SizedBox(
                      width: 30,
                    ),
                    buttonContainer('assets/headset.png', "headset",
                        ctxt1: ctxt),
                    const SizedBox(
                      width: 30,
                    ),
                    buttonContainer('assets/smarttv.png', "smart tv",
                        lt: 20, ctxt1: ctxt),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 100,
                    ),
                    buttonContainer('assets/bluetooth.png', "bluetooth",
                        ctxt1: ctxt),
                    const SizedBox(
                      width: 30,
                    ),
                    buttonContainer('assets/powerbank.png', "powerbank",
                        ctxt1: ctxt),
                    const SizedBox(
                      width: 30,
                    ),
                    buttonContainer('assets/ipad.png', "ipad", ctxt1: ctxt),
                    const SizedBox(
                      width: 30,
                    ),
                    buttonContainer('assets/smartwatch.png', "smart watch",
                        bot: 45, ctxt1: ctxt),
                    SizedBox(
                      width: 100,
                    ),
                    // IconButton(
                    //   icon: Image.asset('assets/rocket.png'),
                    //   iconSize: 70,
                    //   padding: EdgeInsets.fromLTRB(50, 100, 0, 0),
                    //   onPressed: () {},
                    // ),
                    // Align(
                    //     alignment: FractionalOffset.center,
                    //     child: Padding(
                    //         padding: const EdgeInsets.fromLTRB(40, 70, 0, 0),
                    //         child: Image.asset(
                    //           'assets/rocket.png',
                    //           height: 100,
                    //           width: 100,
                    //         ))),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
