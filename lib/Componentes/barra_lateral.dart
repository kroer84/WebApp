import 'package:flutter/material.dart';

import 'ItemMenu.dart';

class BarraLateral extends StatefulWidget {
  @override
  _BarraLateralState createState() => _BarraLateralState();
}

class _BarraLateralState extends State<BarraLateral> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          gradient: LinearGradient(
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            // stops: [0.8, 0.9],
            colors: [
              Color.fromRGBO(255, 94, 110, 1),
              Color.fromRGBO(167, 7, 30, 1)
            ],
          )),
      child: Column(
        children: [
          Container(
            height: 30,
          ),
          Text('R', style: TextStyle(fontSize: 40, color: Colors.white)),
          // IconButton(icon: Icon(Icons.add), onPressed: () {})
          Container(
            height: 50,
          ),
          ItemMenu('home', 'Home'),
          ItemMenu('code', 'Codigo'),
          ItemMenu('alarm', 'Alarma'),
          ItemMenu('info', 'Información'),
        ],
      ),
    );
  }
}

