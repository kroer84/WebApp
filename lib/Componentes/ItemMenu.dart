import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controllers/cuerpo_controller.dart';

class ItemMenu extends StatelessWidget {
  final _icons = <String, IconData>{
    'home': Icons.home,
    'cartera': Icons.wallet_giftcard,
    'corte': Icons.corporate_fare,
    'alarm': Icons.alarm,
    'report': Icons.report,
    'info': Icons.info,
    'contacto': Icons.contact_page,
    'catalogos': Icons.table_rows,
    'usuarios': Icons.people,
    'tesoreria': Icons.monetization_on,
    'ant': Icons.table_chart,
    'carga': Icons.upload_file,
  };

  final String nombre;
  final String nombreIcono;
  final int seleccion;

  final CuerpoController controller = Get.find<CuerpoController>();

  ItemMenu(this.nombreIcono, this.nombre, this.seleccion);

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
                print(nombre);
                controller.menuSeleccionado.value = seleccion;
              }),
          Text(nombre, style: TextStyle(fontSize: 10, color: Colors.white)),
        ],
      ),
    );
  }
}
