import 'package:flutter/material.dart';

class vistaLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/fondo.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Text("Boost life", style: TextStyle(
                  fontSize: 40.0, fontFamily: 'PacificoRegular',),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10.0,),
              Container(child: Text(
                  "Registrarte y olvidate de los alimentos caducados", style: TextStyle(fontFamily: 'NarrowRegular',),),
              ),
            ],
          ),
        ),
        ),
    );
  }
}

//Text("Boost life", style: TextStyle(fontSize: 30.0, fontFamily: 'PacificoRegular',)