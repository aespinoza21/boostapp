import 'package:flutter/material.dart';

class vistaInicioSesion extends StatelessWidget {
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
                      Image.asset("assets/boostlife.png"),
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
                      Container(
                        child: Text("Contraseña"),
                      ),
                      Container(
                        child: Text("Boton"),
                      ),
                      Container(
                        child: Text("Recuperar contra"),
                      ),
                      Container(
                        child: Text("Registrate"),
                      ),
                    ],
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
