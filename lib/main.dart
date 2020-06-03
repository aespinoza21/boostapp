import 'dart:async';

import 'package:boostapp/vistaPrincipal.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:boostapp/VistaRegistro.dart';
import 'dart:ui';
import 'package:async/async.dart';
import 'VistaLogin.dart';
import 'push_notifications.dart';

void main() => runApp(VistaPresentacion());

PushNotificationsManager myNotifi = new PushNotificationsManager();
class VistaPresentacion extends StatefulWidget {
  @override
  _VistaPresentacionState createState() => _VistaPresentacionState();
}

class _VistaPresentacionState extends State<VistaPresentacion> {
  Widget wActual = Landing();
  @override
  void initState() {
    myNotifi.init();
    // TODO: implement initState
    super.initState();
    var future2 = new Future.delayed(const Duration(milliseconds: 4100), () {
      setState(() {
        wActual = vistaPrincipal(); //vistaLogin();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bootslife',
      theme: ThemeData(),
      home: Scaffold(
        /*resizeToAvoidBottomInset: false,*/
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

class menuPrincipal extends StatelessWidget {
  _VistaPresentacionState parent;

  menuPrincipal(this.parent);

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
          GestureDetector(
            onTap: () {
              this.parent.setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => vistaLogin()),
                );
                //this.parent.wActual = vistaLogin();
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Container(
                height: 37.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color(0xFF51B955),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.person_add,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Registrate!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: 'NarrowRegular',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: () {
              this.parent.setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => vistaInicioSesion()),
                );
                //this.parent.wActual = vistaLogin();
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Container(
                height: 37.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color(0xFFfeed35),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Inicia sesión",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: 'NarrowRegular',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
