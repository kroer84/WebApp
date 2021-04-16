import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          SizedBox(
            height: 20,
          ),
          Image.asset(
            'lib/asset/images/apoya_transparent.png',
            width: 50,
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: Get.height * .05),
                ItemMenu('carga', 'Carga', 0),
                SizedBox(height: Get.height * .02),
                ItemMenu('tesoreria', 'Tesorería', 1),
                SizedBox(height: Get.height * .02),
                ItemMenu('corte', 'Corte', 2),
                SizedBox(height: Get.height * .02),
                ItemMenu('cartera', 'Cartera', 3),
                SizedBox(height: Get.height * .02),
                ItemMenu('ant', 'Tabla', 4),
                SizedBox(height: Get.height * .02),
                ItemMenu('catalogos', 'Catálogos', 5),
                SizedBox(height: Get.height * .02),
                ItemMenu('usuarios', 'Usuarios', 6),
                SizedBox(height: Get.height * .05),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
