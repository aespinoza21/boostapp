import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class vistaRecetas extends StatefulWidget {
  @override
  _vistaRecetasState createState() => _vistaRecetasState();
}

class _vistaRecetasState extends State<vistaRecetas> {
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
                      "Recetas",
                      style: TextStyle(
                        fontFamily: "PacificoRegular",
                        fontSize: 40.0,
                        color: Color(0xFF51B955),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      scrollDirection: Axis.vertical,
                      children: new List<Widget>.generate(
                        7,
                        (index) {
                          return new GridTile(
                            child: new Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/${index + 1}.jpg"),
                                      fit: BoxFit.cover),
                                  color: Colors.blue.shade200,
                                ),
                                margin: EdgeInsets.all(4.0),
                                child: new Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 30.0,
                                    width: double.infinity,
                                    child: descripcion(index + 1),
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                    ),
                                  ),
                                )),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 20.0,
              top: 20.0,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
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

  Center descripcion(index){
    Center descripcion = Center(child: Text(""),);
    switch(index){
      case 1:
        descripcion = Center(child: Text("Ensalada de salmon ahumado", style: TextStyle(color: Colors.white),),);
        break;
      case 2:
        descripcion = Center(child: Text("Fritata de alcachofas", style: TextStyle(color: Colors.white)),);
        break;
      case 3:
        descripcion = Center(child: Text("Cebollines a la parrilla", style: TextStyle(color: Colors.white)),);
        break;
      case 4:
        descripcion = Center(child: Text("Camarones con fideos", style: TextStyle(color: Colors.white)),);
        break;
      case 5:
        descripcion = Center(child: Text("Acelga suiza al ajo", style: TextStyle(color: Colors.white)),);
        break;
      case 6:
        descripcion = Center(child: Text("Pollo con ajonjoli", style: TextStyle(color: Colors.white)),);
        break;
      case 7:
        descripcion = Center(child: Text("Hamburguesa de pollo", style: TextStyle(color: Colors.white)),);
        break;
    }

    return descripcion;
  }
}
