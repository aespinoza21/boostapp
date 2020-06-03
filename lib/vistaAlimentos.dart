import 'package:boostapp/globales.dart';
import 'package:boostapp/tomarFoto.dart';
import 'package:boostapp/vistaPrincipal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class vistaAlimentos extends StatefulWidget {
  int tipo;
  vistaAlimentos(this.tipo);
  @override
  _vistaAlimentosState createState() => _vistaAlimentosState(tipo);
}

class _vistaAlimentosState extends State<vistaAlimentos> {
  int tipo;
  _vistaAlimentosState(this.tipo);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/fondo.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/fondorecetas.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30.0,
                  ),
                  Center(
                    child: Text(
                      "Alimentos",
                      style: TextStyle(
                        fontFamily: "PacificoRegular",
                        fontSize: 40.0,
                        color: Color(0xFF51B955),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children:
                          (tipolistaglobal == 1) ? listaTipo2 : listaTipo2,
                    ),
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => CameraWidget(),
                    ),
                  );
                },
                child: Container(
                  width: 70.0,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/recibo.png",
                          width: 50.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20.0,
              top: 30.0,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              vistaPrincipal()));
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> listaTipo1 = [
    Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 200.0,
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: Center(
          child: Text(
            "1 Semana",
            style: TextStyle(
              fontFamily: "NarrowRegular",
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
    SizedBox(
      height: 10.0,
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 250.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
        ),
        child: Center(
          child: Text(
            "2 a 3 Semanas",
            style: TextStyle(
              fontFamily: "NarrowRegular",
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
    SizedBox(
      height: 10.0,
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: Center(
          child: Text(
            "1 Mes o más",
            style: TextStyle(
              fontFamily: "NarrowRegular",
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
    SizedBox(
      height: 10.0,
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        child: Center(
          child: Text(
            "Caducado",
            style: TextStyle(
              fontFamily: "NarrowRegular",
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  ];

  List<Widget> listaTipo2 = [
    Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 200.0,
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: Center(
          child: Text(
            "1 Semana",
            style: TextStyle(
              fontFamily: "NarrowRegular",
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),

    Align(
      alignment: Alignment.centerLeft,
      child: Text("Pan de barra",
          style: TextStyle(
            fontFamily: "NarrowRegular",
          )),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text("Salchicha",
          style: TextStyle(
            fontFamily: "NarrowRegular",
          )),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text("Jamón",
          style: TextStyle(
            fontFamily: "NarrowRegular",
          )),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text("Tortillas de maíz",
          style: TextStyle(
            fontFamily: "NarrowRegular",
          )),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text("Yogurt",
          style: TextStyle(
            fontFamily: "NarrowRegular",
          )),
    ),
    SizedBox(
      height: 10.0,
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 250.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
        ),
        child: Center(
          child: Text(
            "2 a 3 Semanas",
            style: TextStyle(
              fontFamily: "NarrowRegular",
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Fresas",
        style: TextStyle(
          fontFamily: "NarrowRegular",
        ),
      ),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text("Platanos",
          style: TextStyle(
            fontFamily: "NarrowRegular",
          )),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text("Calabaza",
          style: TextStyle(
            fontFamily: "NarrowRegular",
          )),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text("Tomate",
          style: TextStyle(
            fontFamily: "NarrowRegular",
          )),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text("Crema",
          style: TextStyle(
            fontFamily: "NarrowRegular",
          )),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text("Brócoli",
          style: TextStyle(
            fontFamily: "NarrowRegular",
          )),
    ),
    SizedBox(
      height: 10.0,
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: Center(
          child: Text(
            "1 Mes o más",
            style: TextStyle(
              fontFamily: "NarrowRegular",
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Papa",
        style: TextStyle(
          fontFamily: "NarrowRegular",
        ),
      ),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text("Cebolla",
          style: TextStyle(
            fontFamily: "NarrowRegular",
          )),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text("Tostadas",
          style: TextStyle(
            fontFamily: "NarrowRegular",
          )),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text("Frijol",
          style: TextStyle(
            fontFamily: "NarrowRegular",
          )),
    ),
    SizedBox(
      height: 10.0,
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        child: Center(
          child: Text(
            "Caducado",
            style: TextStyle(
              fontFamily: "NarrowRegular",
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Leche",
        style: TextStyle(
          fontFamily: "NarrowRegular",
        ),
      ),
    ),
  ];
}
