import 'package:flutter/material.dart';
import 'package:ibmhack/secondscreen.dart';
import 'package:ibmhack/connection.dart';

Image imagesAssets(String str, Size size) {
  var assetImage = AssetImage(str);
  return Image(image: assetImage);
}

String name = "";
String final_response = "";

Widget buttonContainer(String img, String str,
        {double bot = 20, double lt = 0, required BuildContext ctxt1}) =>
    InkWell(
      child: Container(
          height: 300,
          width: 270,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0x8AFFFFFF),
            // gradient: const LinearGradient(
            //   begin: Alignment.topRight,
            //   end: Alignment.bottomLeft,
            //   colors:Color(0x8AFFFFFF),
            // ),
          ),
          // ignore: unnecessary_new
          child: new Stack(
            children: <Widget>[
              Align(
                  alignment: FractionalOffset.center,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(lt, 10, 15, bot),
                      child: Image.asset(img))),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    str,
                    style: TextStyle(
                      fontFamily: 'AndadaPro',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          )),
      onTap: () {
        final url = "http://127.0.0.1:5000/predict";
        fetchdata(url);
        Navigator.push(
            ctxt1, new MaterialPageRoute(builder: (ctxt1) => new secscreen()));
      },
    );
