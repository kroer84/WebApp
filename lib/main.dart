import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controllers/cuerpo_controller.dart';
import 'Componentes/barra_lateral.dart';
import 'Componentes/cuerpo.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(CuerpoController());
    return Scaffold(
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
        child: principal(),
      ),
    );
  }
}

principal() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30), color: Color(0x00000000)),
    margin: EdgeInsets.only(
        left: Get.width * .05,
        top: Get.height * .05,
        right: Get.width * .05,
        bottom: Get.height * .05),
    child: Row(
      children: [BarraLateral(), Expanded(child: Cuerpo())],
    ),
  );
}
