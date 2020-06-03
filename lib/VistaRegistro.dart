import 'package:boostapp/VistaLogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class vistaLogin extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  var _correoController = TextEditingController();
  var _nombreController = TextEditingController();
  var _usuarioController = TextEditingController();
  var _contrasenaController = TextEditingController();

  final FocusNode _correoFocus = FocusNode();
  final FocusNode _nombreFocus = FocusNode();
  final FocusNode _usuarioFocus = FocusNode();
  final FocusNode _contrasenaFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*resizeToAvoidBottomInset: false,*/
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
              image: AssetImage("assets/fondoregistro.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  /*decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/fondo.png"),
                      fit: BoxFit.cover,
                    ),
                  ),*/
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        child: Text(
                          "Boost life",
                          style: TextStyle(
                            fontSize: 50.0,
                            fontFamily: 'PacificoRegular',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 80.0),
                        child: Text(
                          "Registrarte y olvidate de los alimentos caducados",
                          style: TextStyle(
                            fontFamily: 'NarrowRegular',
                            fontSize: 17.0,
                            color: Colors.black45,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 50.0),
                        child: Container(
                          height: 37.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color(0xFF0098F3),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("assets/fb.png"),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                "Inicia sesión con Facebook",
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
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(children: <Widget>[
                          Expanded(
                              child: Divider(
                            color: Colors.black,
                          )),
                          Text("  O  "),
                          Expanded(
                              child: Divider(
                            color: Colors.black,
                          )),
                        ]),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 50.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: TextFormField(
                                  focusNode: _correoFocus,
                                  controller: _correoController,
                                  textInputAction: TextInputAction.next,
                                  onFieldSubmitted: (term) {
                                    _fieldFocusChange(
                                        context, _correoFocus, _nombreFocus);
                                  },
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 0.0),
                                      fillColor: Colors.grey,
                                      border: OutlineInputBorder(),
                                      labelText: 'Correo electrónico',
                                      labelStyle: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'NarrowRegular')),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                  child: TextFormField(
                                focusNode: _nombreFocus,
                                controller: _nombreController,
                                textInputAction: TextInputAction.next,
                                onFieldSubmitted: (term) {
                                  _fieldFocusChange(
                                      context, _nombreFocus, _usuarioFocus);
                                },
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 0.0),
                                    fillColor: Colors.grey,
                                    border: OutlineInputBorder(),
                                    labelText: 'Nombre completo',
                                    labelStyle: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'NarrowRegular')),
                              )),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                  child: TextFormField(
                                focusNode: _usuarioFocus,
                                controller: _usuarioController,
                                textInputAction: TextInputAction.next,
                                onFieldSubmitted: (term) {
                                  _fieldFocusChange(
                                      context, _usuarioFocus, _contrasenaFocus);
                                },
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 0.0),
                                    fillColor: Colors.grey,
                                    border: OutlineInputBorder(),
                                    labelText: 'Nombre de usuario',
                                    labelStyle: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'NarrowRegular')),
                              )),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                  child: TextFormField(
                                    obscureText: true,
                                focusNode: _contrasenaFocus,
                                controller: _contrasenaController,
                                textInputAction: TextInputAction.go,
                                onFieldSubmitted: (term) {
                                  FocusScopeNode currentFocus =
                                      FocusScope.of(context);
                                  currentFocus.unfocus();
                                },
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 0.0),
                                    fillColor: Colors.grey,
                                    border: OutlineInputBorder(),
                                    labelText: 'Contraseña',
                                    labelStyle: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'NarrowRegular')),
                              )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 80.0),
                        child: Text(
                          "Al registrarse aceptas nuestras Condiciones, la Política de datos y la Política de cookies.",
                          style: TextStyle(
                            fontFamily: 'NarrowRegular',
                            fontSize: 15.0,
                            color: Colors.black45,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      vistaInicioSesion()));
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
                                  Icons.verified_user,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  "Registrate",
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
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

_fieldFocusChange(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}
