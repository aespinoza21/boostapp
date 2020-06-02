import 'package:boostapp/VistaRegistro.dart';
import 'package:flutter/material.dart';
import 'vistaPrincipal.dart';

class vistaInicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/fondo.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/fondologin.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/boostlife.png",
                          width: 250.0,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 40.0),
                          child: Container(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 0.0),
                                  fillColor: Colors.grey,
                                  border: OutlineInputBorder(),
                                  labelText: 'Usuario',
                                  labelStyle: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'NarrowRegular')),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 40.0),
                          child: Container(
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 0.0),
                                  fillColor: Colors.grey,
                                  border: OutlineInputBorder(),
                                  labelText: 'Contraseña',
                                  labelStyle: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'NarrowRegular')),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        vistaPrincipal()));
                            //this.parent.wActual = vistaLogin();
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
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    "Iniciar sesión",
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
                          height: 17.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        vistaLogin()));
                          },
                          child: Container(
                            child: Text(
                              "Registrate",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontFamily: "NarrowRegular",
                                  fontSize: 18.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
