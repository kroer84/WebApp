import 'package:flutter/material.dart';
import 'package:myapp/pages/datagrid.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Cuerpo extends StatefulWidget {
  @override
  _CuerpoState createState() => _CuerpoState();
}

class _CuerpoState extends State<Cuerpo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
          color: Color.fromRGBO(237, 241, 247, 0.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  // stops: [0.8, 0.9],
                  colors: [
                    Color.fromRGBO(51, 63, 85, 1),
                    Color.fromRGBO(15, 20, 26, 1),
                  ],
                )),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15, right: 30),
                  height: 70,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Icon(
                          Icons.battery_alert,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Container(
                            width: 50,
                            child: Image.asset('lib/asset/images/perfil.png'),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text('Miguel Jiménez',
                            style:
                                TextStyle(fontSize: 15, color: Colors.white)),
                      ),
                      Container(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                          child: SfCartesianChart(
                              palette: <Color>[Colors.yellow, Colors.red],
                              primaryXAxis: CategoryAxis(),
                              series: <LineSeries<SalesData, String>>[
                                LineSeries<SalesData, String>(
                                    // Bind data source
                                    dataSource: <SalesData>[
                                      SalesData('Jan', 35),
                                      SalesData('Feb', 28),
                                      SalesData('Mar', 34),
                                      SalesData('Apr', 32),
                                      SalesData('May', 40)
                                    ],
                                    xValueMapper: (SalesData sales, _) =>
                                        sales.year,
                                    yValueMapper: (SalesData sales, _) =>
                                        sales.sales)
                              ])),
                      Grafica(
                          'N° de Tiket', '1.178', 'ultimos 6 meses', 'grafica'),
                      Divider(
                        color: Colors.red,
                        height: 20,
                      ),
                      Grafica('Valor de ticket medio', '768 €',
                          'ultimos 6 meses', 'grafica'),
                      Divider(
                        color: Colors.white,
                        height: 20,
                      ),
                      Grafica('Ventas Comparadas', '1.178', 'ultimos 6 meses',
                          'grafica'),
                      Grafica('N. pedidos realizados', '134', 'ultimos 6 meses',
                          'grafica'),
                      Grafica('Facturas realizadas', '256', 'ultimos 6 meses',
                          'grafica'),
                      Grafica('Facturas realizadas', '256', 'ultimos 6 meses',
                          'grafica'),
                      Grafica('Facturas realizadas', '256', 'ultimos 6 meses',
                          'grafica'),
                      Grafica('Facturas realizadas', '256', 'ultimos 6 meses',
                          'grafica'),
                    ],
                    scrollDirection: Axis.horizontal,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
                child: TableDataGrid(),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset:
                          Offset(2.0, 2.0), // shadow direction: bottom right
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}

class Grafica extends StatelessWidget {
  final String titulo;
  final String dato;
  final String titulo2;
  final String grafica;

  Grafica(this.titulo, this.dato, this.titulo2, this.grafica);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 35,
        right: 35,
        top: 10,
      ),
      // decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: Column(
        children: [
          Text(titulo, style: TextStyle(fontSize: 10, color: Colors.white)),
          Text(dato, style: TextStyle(fontSize: 30, color: Colors.white)),
          Text(titulo2, style: TextStyle(fontSize: 9, color: Colors.white)),
          Text(grafica, style: TextStyle(fontSize: 20, color: Colors.yellow)),
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
