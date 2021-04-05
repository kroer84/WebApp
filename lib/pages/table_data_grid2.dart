import 'package:flutter/material.dart';
import 'package:myapp/models/edo_cuenta_individual.dart';
import 'package:myapp/models/sample_view.dart';
import 'package:myapp/models/sesion.dart';
// import 'package:intl/intl.dart';

/// Barcode import
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

///Core theme import
// import 'package:syncfusion_flutter_core/theme.dart';

class TableDataGrid2 extends SampleView {
  @override
  _TableDataGrid2State createState() => _TableDataGrid2State();
}

List<_Datos> _datoCollection;

class _TableDataGrid2State extends SampleViewState {
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
    return Center(
      child: Switch(
          value: value,
          onChanged: (valor) {
            setState(() {
              bool vala = valor;
              print(vala);
            });
          },
          activeTrackColor: Color.fromRGBO(255, 94, 110, 1),
          activeColor: Color.fromRGBO(167, 7, 30, 1)),
    );
  }

  Widget getSwitch2(bool value) {
    return Center(
      child: Switch(
          value: value,
          onChanged: (value) {},
          activeTrackColor: Color.fromRGBO(27, 54, 133, 1),
          activeColor: Color.fromRGBO(0, 186, 255, 1)),
    );
  }

  Widget getAcciones() {
    return Center(
      child: Container(
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
      ),
    );
  }

  formateaTexto(String texto) {
    return Center(
      child: Text(
        texto,
        style: TextStyle(color: Color.fromRGBO(131, 131, 131, 1)),
      ),
    );
  }

  formateaIcono(IconData ic) {
    IconData icono = ic ?? Icons.local_shipping;
    return Center(
      child: Icon(
        icono,
        color: Color.fromRGBO(191, 191, 191, 1),
      ),
    );
  }

  Widget getCellWidget(BuildContext context, GridColumn column, int rowIndex) {
    if (column.mappingName == 'nombre')
      return formateaIcono(null);
    else if (column.mappingName == 'identificador')
      return formateaTexto(_datoCollection[rowIndex].codigo);
    else if (column.mappingName == 'idCuenta')
      return formateaTexto(_datoCollection[rowIndex].descripcion);
    else if (column.mappingName == 'estatus')
      return formateaTexto(_datoCollection[rowIndex].marca);
    else if (column.mappingName == 'fechaLiqidacion')
      return getSwitch1(_datoCollection[rowIndex].enCliente);
    else if (column.mappingName == 'identificadorReporte')
      return getSwitch2(_datoCollection[rowIndex].activo);
    else if (column.mappingName == 'apoEmpresa')
      return getEstado(_datoCollection[rowIndex].estado);
    else if (column.mappingName == 'apoEmpleado')
      return getAcciones();
    else
      return null;
  }

  SfDataGrid _webSample() {
    return SfDataGrid(
      source: datoSource,
      columnWidthMode: ColumnWidthMode.auto,
      cellBuilder: getCellWidget,
      columns: obtenTitulos(),
    );
  }

  obtenTitulos() {
    List<GridColumn> encabezados = [];
    EdoCuentaIndividual().titulos.forEach((key, value) {
      encabezados.add(
        GridWidgetColumn(
          mappingName: key,
          width: model.isWeb ? 180 : 140,
          columnWidthMode: ColumnWidthMode.header,
          headerText: key,
        ),
      );
    });
    return encabezados;
  }

  @override
  void initState() {
    super.initState();
    _datoCollection = generarDatos();
  }

  iconoEncabezado(IconData icono) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: IconButton(
          icon: Icon(icono),
          color: Color.fromRGBO(163, 173, 200, 1),
          onPressed: null),
    );
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
                  child: Text(
                      'Registros totales - ${Sesion.miSesion.edosCuenta.length}'),
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
                      iconoEncabezado(Icons.file_download),
                      iconoEncabezado(Icons.tune),
                      iconoEncabezado(Icons.view_headline),
                      iconoEncabezado(Icons.delete),
                      iconoEncabezado(Icons.file_download),
                      iconoEncabezado(Icons.file_download),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(child: _webSample()),
          )
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
