import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

NumberFormat formato = NumberFormat.currency(locale: 'en_US', symbol: '\$');

Widget getSwitch1(bool value) {
    return Center(
      child: Switch(
        value: value,
        onChanged: (valor) {
          // setState(() {
            bool vala = valor;
            print(vala);
          // });
        },
        activeTrackColor: Color.fromRGBO(255, 94, 110, 1),
        activeColor: Color.fromRGBO(167, 7, 30, 1)
      ),
    );
  }

  Widget getSwitch2(bool value) {
    return Center(
      child: Switch(
        value: value,
        onChanged: (value) {},
        activeTrackColor: Color.fromRGBO(27, 54, 133, 1),
        activeColor: Color.fromRGBO(0, 186, 255, 1)
      ),
    );
  }

  Widget getAcciones() {
    return Center(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(color: Color.fromRGBO(163, 173, 200, 1), icon: Icon(Icons.mode_edit), onPressed: () {}),
            IconButton(color: Color.fromRGBO(163, 173, 200, 1), icon: Icon(Icons.wifi_tethering), onPressed: () {}),
            IconButton(color: Color.fromRGBO(163, 173, 200, 1), icon: Icon(Icons.delete), onPressed: () {}),
          ],
        ),
      ),
    );
  }

  Widget getEstado(int estado) {
    String txt = '';
    Color cl = Colors.white;
    Color tcl = Colors.white;

    if (estado == 1) {
      txt = 'Ok';
      cl = Color.fromRGBO(212, 237, 218, 1);
      tcl = Color.fromRGBO(37, 101, 51, 1);
    } else if (estado == 2) {
      txt = 'En reparacion';
      cl = Color.fromRGBO(255, 243, 205, 1);
      tcl = Color.fromRGBO(154, 123, 40, 1);
    } else {
      txt = 'Averiado';
      cl = Color.fromRGBO(247, 215, 218, 1);
      tcl = Color.fromRGBO(178, 116, 119, 1);
    }
    return Center(
      child: Container(
        width: 150.0,
        height: 25.0,
        decoration: BoxDecoration(color: cl, borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$txt', style: TextStyle(color: tcl),),
          ],
        ),
      ),
    );
  }

  formateaMoneda(double texto) {
    return Center(
      child: Text('${formato.format(texto)}', style: TextStyle(color: Color.fromRGBO(131, 131, 131, 1)),),
    );
  }

  formateaPorcentaje(double texto) {
    return Center(
      child: Text('$texto %', style: TextStyle(color: Color.fromRGBO(131, 131, 131, 1)),),
    );
  }

  formateaTexto(String texto) {
    return Center(
      child: Text(texto, style: TextStyle(color: Color.fromRGBO(131, 131, 131, 1)),),
    );
  }

  formateaEntero(int texto) {
    return Center(
      child: Text('$texto', style: TextStyle(color: Color.fromRGBO(131, 131, 131, 1)), textAlign: TextAlign.center,),
    );
  }

  formateaIcono(IconData ic) {
    IconData icono = ic ?? Icons.local_shipping;
    return Center(
      child: Icon(icono, color: Color.fromRGBO(191, 191, 191, 1), ),
    );
  }

  iconoEncabezado(IconData icono, Function funcion) {
    return Container(
      decoration: BoxDecoration(border: Border(left: BorderSide(color: Color.fromRGBO(223, 222, 228, 1), width: 2.0,))),
      child: IconButton(icon: Icon(icono), color: Color.fromRGBO(163, 173, 200, 1), onPressed: funcion),
    );
  }