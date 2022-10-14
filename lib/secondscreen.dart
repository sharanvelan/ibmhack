import 'package:flutter/material.dart';
import 'package:ibmhack/page2ext.dart';
import 'package:ibmhack/secondscext.dart';
import 'package:ibmhack/connection.dart';

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
              padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    SizedBox(
                      width: 150,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("Home",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                decoration: TextDecoration.underline))),
                    SizedBox(
                      width: 1000,
                    ),
                    Expanded(
                      child: TextField(
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            prefixIconColor: Colors.white,
                            hintText: "Search Here",
                            hintStyle: TextStyle(color: Colors.white),
                            fillColor: Colors.white,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                          )),
                    ),
                    SizedBox(
                      width: 150,
                    )
                  ]),
                  SizedBox(
                    height: 50,
                  ),
                  secondscreenext(
                      'ASUS VivoBook K15 OLED Ryzen 5 Hexa Core 5500U - \n(16 GB/512 GB SSD/Windows 11 Home) KM513UA-L513WS Thi...fasdjflfafdf',
                      '5.0',
                      '55,000'),
                  SizedBox(
                    height: 30,
                  ),
                  secondscreenext('Lenovo s145              ', '5.0', '55,000'),
                  SizedBox(
                    height: 30,
                  ),
                  secondscreenext('Lenovo s145              ', '5.0', '55,000'),
                  SizedBox(
                    height: 30,
                  ),
                  secondscreenext('Lenovo s145              ', '5.0', '55,000'),
                  SizedBox(
                    height: 30,
                  ),
                  secondscreenext('Lenovo s145              ', '5.0', '55,000'),
                  SizedBox(
                    height: 30,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
