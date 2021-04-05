import 'package:flutter/material.dart';
import 'package:myapp/models/corte_operaciones.dart';

import 'package:myapp/providers/data_provider.dart';
import 'package:myapp/models/edo_cuenta_individual.dart';
import 'package:myapp/models/sesion.dart';

class CargaDatos extends StatelessWidget {
  final DataProvider dp = DataProvider();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
            )
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              cargaWidget(
                  dp.getResumenEstadoDeCuenta(),
                  Text('Se cargo la informacion del Estado de Cuenta...'),
                  guardaEdoCuenta,
                  ['#'],
                  null),
              cargaWidget(
                  dp.getCorteOperaciones(),
                  Text('Se cargo la informacion de Corte Operaciones...'),
                  guardaCorteOperaciones,
                  ['#'],
                  null),
            ],
          ),
        ),
      ),
    );
  }

  guardaEdoCuenta(List<EdoCuentaIndividual> edosCuenta) =>
      Sesion.miSesion.edosCuenta = edosCuenta;
  guardaCorteOperaciones(List<CorteOperaciones> corte) {
    Sesion.miSesion.corteOperaciones = corte;
  }

  Widget cargaWidget(Future futuro, Widget widget, Function funcion,
      List argsPosicionales, Map argsNombrados) {
    return FutureBuilder(
      future: futuro,
      builder: (context, AsyncSnapshot snapshot) {
        // print(snapshot.connectionState);
        // print(snapshot.error);
        if (snapshot.hasData) {
          int pos = argsPosicionales != null
              ? argsPosicionales.indexWhere((e) => e == '#')
              : -1;
          if (pos != -1) argsPosicionales[pos] = snapshot.data;
          Function.apply(funcion, argsPosicionales, argsNombrados);
          return widget;
        } else {
          return SizedBox(
            child: CircularProgressIndicator(),
            width: 10,
            height: 10,
          );
        }
      },
    );
  }
}
