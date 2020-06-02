import 'dart:ui';

import 'package:boostapp/vistaAlimentos.dart';
import 'package:boostapp/vistaRecetas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class vistaPrincipal extends StatefulWidget {
  @override
  _vistaPrincipalState createState() => _vistaPrincipalState();
}

class _vistaPrincipalState extends State<vistaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/fondo.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/fondoperfil.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Container(
                      width: 140.0,
                      height: 140.0,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new AssetImage("assets/profilepic.png"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Text(
                      "Keren Castillo",
                      style: TextStyle(
                          color: Color(0xFF51B955),
                          fontFamily: "NarrowBold",
                          fontSize: 28.0,
                          letterSpacing: 1.5),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Center(
                      child: Text(
                    "Total de alimentos: 0",
                    style: TextStyle(
                        fontFamily: "NarrowRegular",
                        fontSize: 19.0,
                        color: Colors.black38),
                  )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Center(
                      child: Text(
                    "Alimentos caducados: 0",
                    style: TextStyle(
                      fontFamily: "NarrowRegular",
                      fontSize: 19.0,
                      color: Colors.black38,
                    ),
                  )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Center(
                      child: Text(
                    "Próximos a caducar: 0",
                    style: TextStyle(
                      fontFamily: "NarrowRegular",
                      fontSize: 19.0,
                      color: Colors.black38,
                    ),
                  )),
                ],
              ),
              Container(
                height: 220.0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => vistaRecetas(),),
                          );
                        },
                        child: Padding(
                          padding:
                              const EdgeInsets.only(bottom: 30.0, right: 20.0),
                          child: Text(
                            "Recetas",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "NarrowBold",
                              fontSize: 38.0,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => vistaAlimentos(1)),
                          );
                        },
                        child: Padding(
                          padding:
                              const EdgeInsets.only(bottom: 30.0, left: 30.0),
                          child: Text(
                            "Alimentos",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "NarrowBold",
                              fontSize: 38.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
