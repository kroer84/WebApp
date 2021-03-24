import 'package:flutter/material.dart';
import 'package:myapp/models/sample_view.dart';
// import 'package:intl/intl.dart';

/// Barcode import
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

///Core theme import
// import 'package:syncfusion_flutter_core/theme.dart';

class TableDataGrid extends SampleView {
  @override
  _TableDataGridState createState() => _TableDataGridState();
}

List<_Datos> _datoCollection;

class _TableDataGridState extends SampleViewState {
  _DatoDataGridSource datoSource = _DatoDataGridSource();

  final List<int> std = <int>[
    1,
    2,
    3,
    1,
    2,
    3,
    1,
    2,
    3,
    1,
  ];

  List<_Datos> generarDatos() {
    List<_Datos> dato = <_Datos>[];
    for (var i = 0; i < 10; i++) {
      dato.add(
          _Datos('Carrito', 'PR-0045', 'HP-DESKY', 'HP', true, false, std[i]));
    }
    return dato;
  }

  Widget getSwitch1(bool value) {
    return Switch(
        value: value,
        onChanged: (valor) {
          setState(() {
            bool vala = valor;
            print(vala);
          });
        },
        activeTrackColor: Color.fromRGBO(255, 94, 110, 1),
        activeColor: Color.fromRGBO(167, 7, 30, 1));
  }

  Widget getSwitch2(bool value) {
    return Switch(
        value: value,
        onChanged: (value) {},
        activeTrackColor: Color.fromRGBO(27, 54, 133, 1),
        activeColor: Color.fromRGBO(0, 186, 255, 1));
  }

  Widget getAcciones() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              color: Color.fromRGBO(163, 173, 200, 1),
              icon: Icon(Icons.mode_edit),
              onPressed: () {}),
          IconButton(
              color: Color.fromRGBO(163, 173, 200, 1),
              icon: Icon(Icons.wifi_tethering),
              onPressed: () {}),
          IconButton(
              color: Color.fromRGBO(163, 173, 200, 1),
              icon: Icon(Icons.delete),
              onPressed: () {}),
        ],
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
    return Container(
      width: 150.0,
      height: 25.0,
      decoration:
          BoxDecoration(color: cl, borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$txt',
            style: TextStyle(color: tcl),
          ),
        ],
      ),
    );
  }

  Widget getCellWidget(BuildContext context, GridColumn column, int rowIndex) {
    if (column.mappingName == 'tipo') {
      final String nombre = _datoCollection[rowIndex].tipo;
      return Center(
          child: Icon(
        Icons.local_shipping,
        color: Color.fromRGBO(191, 191, 191, 1),
      ));
    } else if (column.mappingName == 'codigo') {
      final String codigo = _datoCollection[rowIndex].codigo;
      return Center(
          child: Text(
        codigo,
        style: TextStyle(color: Color.fromRGBO(131, 131, 131, 1)),
      ));
    } else if (column.mappingName == 'descripcion') {
      final String descripcion = _datoCollection[rowIndex].descripcion;
      return Center(
          child: Text(descripcion,
              style: TextStyle(
                color: Color.fromRGBO(131, 131, 131, 1),
              )));
    } else if (column.mappingName == 'marca') {
      final String marca = _datoCollection[rowIndex].marca;
      return Center(
        child: Text(marca,
            style: TextStyle(color: Color.fromRGBO(131, 131, 131, 1))),
      );
    } else if (column.mappingName == 'enCliente') {
      final bool enCLiente = _datoCollection[rowIndex].enCliente;
      return Center(child: getSwitch1(enCLiente));
    } else if (column.mappingName == 'activo') {
      final bool activo = _datoCollection[rowIndex].activo;
      return Center(
        child: getSwitch2(activo),
      );
    } else if (column.mappingName == 'estado') {
      final int estado = _datoCollection[rowIndex].estado;
      return Center(
        child: getEstado(estado),
      );
    } else if (column.mappingName == 'acciones') {
      return Center(
        child: getAcciones(),
      );
    } else {
      return null;
    }
  }

  SfDataGrid _webSample() {
    return SfDataGrid(
      source: datoSource,
      columnWidthMode: ColumnWidthMode.auto,
      cellBuilder: getCellWidget,
      columns: <GridColumn>[
        GridWidgetColumn(
          mappingName: 'tipo',
          width: model.isWeb ? 180 : 140,
          columnWidthMode: ColumnWidthMode.header,
          headerText: 'TIPO',
        ),
        GridWidgetColumn(
          mappingName: 'codigo',
          width: model.isWeb ? 180 : 140,
          columnWidthMode: ColumnWidthMode.header,
          headerText: 'CODIGO',
        ),
        GridWidgetColumn(
          mappingName: 'descripcion',
          width: model.isWeb ? 180 : 140,
          columnWidthMode: ColumnWidthMode.header,
          headerText: 'DESCRIPCION',
        ),
        GridWidgetColumn(
          mappingName: 'marca',
          width: model.isWeb ? 180 : 140,
          columnWidthMode: ColumnWidthMode.header,
          headerText: 'MARCA',
        ),
        GridWidgetColumn(
          mappingName: 'enCliente',
          width: model.isWeb ? 180 : 140,
          columnWidthMode: ColumnWidthMode.header,
          headerText: 'EN CLIENTE',
        ),
        GridWidgetColumn(
          mappingName: 'activo',
          width: model.isWeb ? 180 : 140,
          columnWidthMode: ColumnWidthMode.header,
          headerText: 'ACTIVO',
        ),
        GridWidgetColumn(
          mappingName: 'estado',
          columnWidthMode: ColumnWidthMode.header,
          width: model.isWeb ? 180 : 140,
          headerText: 'ESTADO',
        ),
        GridWidgetColumn(
          mappingName: 'acciones',
          columnWidthMode: ColumnWidthMode.header,
          width: model.isWeb ? 200 : 140,
          headerText: 'ACCIONES',
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    _datoCollection = generarDatos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 1120,
      child: Column(
        children: [
          Container(
            color: Color.fromRGBO(244, 244, 244, 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text('Activos totales - 234'),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: IconButton(
                            icon: Icon(Icons.search),
                            color: Color.fromRGBO(163, 173, 200, 1),
                            onPressed: null),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                          color: Color.fromRGBO(223, 222, 228, 1),
                          width: 2.0,
                        ))),
                        child: IconButton(
                            icon: Icon(Icons.file_download),
                            color: Color.fromRGBO(163, 173, 200, 1),
                            onPressed: null),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                          color: Color.fromRGBO(223, 222, 228, 1),
                          width: 2.0,
                        ))),
                        child: IconButton(
                            icon: Icon(Icons.tune),
                            color: Color.fromRGBO(163, 173, 200, 1),
                            onPressed: null),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                          color: Color.fromRGBO(223, 222, 228, 1),
                          width: 2.0,
                        ))),
                        child: IconButton(
                            icon: Icon(Icons.view_headline),
                            color: Color.fromRGBO(163, 173, 200, 1),
                            onPressed: null),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                          color: Color.fromRGBO(223, 222, 228, 1),
                          width: 2.0,
                        ))),
                        child: IconButton(
                            icon: Icon(Icons.delete),
                            color: Color.fromRGBO(163, 173, 200, 1),
                            onPressed: null),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(child: _webSample()),
        ],
      ),
    ));
  }
}

class _Datos {
  _Datos(this.tipo, this.codigo, this.descripcion, this.marca, this.enCliente,
      this.activo, this.estado);
  final String tipo;
  final String codigo;
  final String descripcion;
  final String marca;
  final bool enCliente;
  final bool activo;
  final int estado;
}

class _DatoDataGridSource extends DataGridSource<_Datos> {
  _DatoDataGridSource();
  @override
  List<_Datos> get dataSource => _datoCollection;
  @override
  Object getValue(_Datos _datos, String columName) {
    switch (columName) {
      case 'nombre':
        return '';
        break;
      default:
        return 'empty';
        break;
    }
  }
}
