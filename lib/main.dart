import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:boostapp/VistaLogin.dart';
import 'dart:ui';
import 'package:async/async.dart';
void main() => runApp(VistaPresentacion());

class VistaPresentacion extends StatefulWidget {
  @override
  _VistaPresentacionState createState() => _VistaPresentacionState();
}

class _VistaPresentacionState extends State<VistaPresentacion> {
  Widget wActual = Landing();
  @override
  Widget build(BuildContext context) {
     var future2 = new Future.delayed(const Duration(milliseconds: 4100), (){
      setState(() {
        wActual = vistaLogin();
      });
    });
    return MaterialApp(
      title: 'Bootslife',
      theme: ThemeData(),
      home: Scaffold(
        body: wActual,
      ),
    );
  }
}

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

