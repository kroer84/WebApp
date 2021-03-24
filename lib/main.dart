import 'package:flutter/material.dart';

import 'Componentes/barra_lateral.dart';
import 'Componentes/cuerpo.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crese',
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            // stops: [0.8, 0.9],
            colors: [
              Color.fromRGBO(181, 66, 83, 1),
              Color.fromRGBO(18, 21, 27, 1),
            ],
          )),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              margin:
                  EdgeInsets.only(left: 150, top: 50, right: 150, bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [BarraLateral(), Expanded(child: Cuerpo())],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
