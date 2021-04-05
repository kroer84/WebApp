import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/pages/carga_datos.dart';
import 'package:myapp/pages/catalogos.dart';
import 'package:myapp/pages/tesoreria.dart';
import 'package:myapp/pages/tesoreria2.dart';
import 'package:myapp/pages/tesoreria3.dart';
import 'package:myapp/pages/usuarios.dart';

class CuerpoController extends GetxController{
  
  List<Widget> seccion = [CargaDatos(), Tesoreria(), Tesoreria3(), Tesoreria2(),  Catalogos(), Usuarios()];

  RxInt menuSeleccionado = 0.obs;
}