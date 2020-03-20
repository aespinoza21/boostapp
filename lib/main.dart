import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:boostapp/VistaLogin.dart';
import 'dart:ui';

void main() => runApp(VistaPresentacion());

class VistaPresentacion extends StatefulWidget {
  @override
  _VistaPresentacionState createState() => _VistaPresentacionState();
}

class _VistaPresentacionState extends State<VistaPresentacion> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var future = new Future.delayed(const Duration(milliseconds: 5400), () {
      print("Test");
    });
    return MaterialApp(
      title: 'Bootslife',
      theme: ThemeData(),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/fondo.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset(
                  "assets/boostlife.png",
                  width: 250.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: LoadingBouncingGrid.circle(
                  borderColor: Color(0xFF55b85a),
                  borderSize: 1.0,
                  size: 50.0,
                  backgroundColor: Color(0xFF55b85a),
                  duration: Duration(milliseconds: 2000),
                  inverted: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
