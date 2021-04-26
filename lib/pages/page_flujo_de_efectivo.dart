import 'package:flutter/material.dart';
import 'package:myapp/pages/table_flujo_de_efectivo.dart';

class PageFlujoDeEfectivo extends StatelessWidget {
  const PageFlujoDeEfectivo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.all(20),
          child: TablaFlujoDeEfectivo(),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
          )),
    );
  }
}
