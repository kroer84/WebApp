import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final _icons = <String, IconData>{
    'home': Icons.home,
    'code': Icons.code,
    'alarm': Icons.alarm,
    'report': Icons.report,
    'info': Icons.info,
    'contacto': Icons.contact_page,
  };
  final String nombre;
  final String nombreIcono;

  ItemMenu(this.nombreIcono, this.nombre);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
      ),
      child: Column(
        children: [
          IconButton(
              icon: Icon(
                _icons[nombreIcono],
                color: Colors.white,
              ),
              onPressed: () {
                print(nombreIcono);
              }),
          Text(nombre, style: TextStyle(fontSize: 10, color: Colors.white)),
        ],
      ),
    );
  }
}
