import 'package:flutter/material.dart';

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
          Boton(
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              'nombre'),
          Boton(
              Icon(
                Icons.code,
                color: Colors.white,
              ),
              'nombre'),
          Boton(
              Icon(
                Icons.alarm,
                color: Colors.white,
              ),
              'nombre'),
          Boton(
              Icon(
                Icons.report,
                color: Colors.white,
              ),
              'nombre'),
          Boton(
              Icon(
                Icons.info,
                color: Colors.white,
              ),
              'nombre'),
          Boton(
              Icon(
                Icons.contact_page,
                color: Colors.white,
              ),
              'nombre'),
          Expanded(child: Container()),
          Boton(
              Icon(
                Icons.power_settings_new,
                color: Colors.white,
              ),
              '')
        ],
      ),
    );
  }
}

class Boton extends StatelessWidget {
  final Icon icono;
  final String nombre;

  Boton(this.icono, this.nombre);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
      ),
      // decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: Column(
        children: [
          icono,
          Text(nombre, style: TextStyle(fontSize: 10, color: Colors.white)),
        ],
      ),
    );
  }
}
