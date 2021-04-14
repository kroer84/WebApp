import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/models/respuestaCartera.dart';
import 'package:myapp/models/sample_view.dart';
import 'package:myapp/models/sesion.dart';
import 'package:myapp/pages/metodos/metodos_table_data_grid.dart';
// import 'package:intl/intl.dart';

/// Barcode import
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

///Core theme import
// import 'package:syncfusion_flutter_core/theme.dart';

class TablaCartera extends SampleView {
  @override
  _TablaCarteraState createState() => _TablaCarteraState();
}

List<Cartera> corteCartera;
List<CustomPopupMenu> choices = [
  CustomPopupMenu(title: 'Ambos', icon: Icons.home),
  CustomPopupMenu(title: 'Horizontal', icon: Icons.bookmark),
  CustomPopupMenu(title: 'Ninguno', icon: Icons.settings),
  CustomPopupMenu(title: 'Vertical', icon: Icons.settings),
];

class _TablaCarteraState extends SampleViewState {
  CarteraDataGridSource datoSource = CarteraDataGridSource();
  final ColumnSizer _columnSizer = ColumnSizer();
  GridLinesVisibility gridLineVisibility;
  CustomPopupMenu _selectedChoices;
  Cartera eci = Cartera();

  @override
  void initState() {
    super.initState();
    gridLineVisibility = GridLinesVisibility.both;
    _selectedChoices = choices[0];
    corteCartera = Sesion.miSesion.edoCartera;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: Get.width * .8,
      height: Get.height * .8,
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
                      'Registros totales - ${Sesion.miSesion.edoCartera.length}'),
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
                      iconoEncabezado(Icons.file_download, () {}),
                      iconoEncabezado(Icons.tune, () {}),
                      construyeMenu(),
                      iconoEncabezado(Icons.delete, () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(child: _dataGridSample()),
          ),
        ],
      ),
    ));
  }

/*------------------------------------------------------------------------*/
  Widget getCellWidget(BuildContext context, GridColumn column, int rowIndex) {
    if (eci.titulos[column.mappingName] == "Texto")
      return formateaTexto(eci.obtenValor(
          column.mappingName, Sesion.miSesion.edoCartera[rowIndex]));
    else if (eci.titulos[column.mappingName] == "Entero")
      return formateaEntero(eci.obtenValor(
          column.mappingName, Sesion.miSesion.edoCartera[rowIndex]));
    else if (eci.titulos[column.mappingName] == "Tipo")
      return formateaEntero(eci.obtenValor(
          column.mappingName, Sesion.miSesion.edoCartera[rowIndex]));
    else if (eci.titulos[column.mappingName] == "Fecha")
      return formateaEntero(eci.obtenValor(
          column.mappingName, Sesion.miSesion.edoCartera[rowIndex]));
    else if (eci.titulos[column.mappingName] == "Porcentaje")
      return formateaPorcentaje(eci.obtenValor(
          column.mappingName, Sesion.miSesion.edoCartera[rowIndex]));
    else if (eci.titulos[column.mappingName] == "Moneda")
      return formateaMoneda(eci.obtenValor(
          column.mappingName, Sesion.miSesion.edoCartera[rowIndex]));
    // if (column.mappingName == 'nombre') return formateaIcono(null);
    // else if (column.mappingName == 'fechaLiqidacion') return getSwitch1(_datoCollection[rowIndex].enCliente);
    // else if (column.mappingName == 'identificadorReporte') return getSwitch2(_datoCollection[rowIndex].activo);
    // else if (column.mappingName == 'apoEmpresa') return getEstado(_datoCollection[rowIndex].estado);
    // else if (column.mappingName == 'apoEmpleado') return getAcciones();
    else
      return null;
  }

  obtenTitulos() {
    List<GridColumn> encabezados = [];
    Cartera().titulos.forEach((key, value) {
      if (value == 'Texto')
        encabezados.add(
          GridTextColumn(
            mappingName: key,
            softWrap: true,
            overflow: TextOverflow.clip,
            width: 180,
            columnWidthMode: ColumnWidthMode.header,
            headerText: key,
          ),
        );
      else
        encabezados.add(
          GridWidgetColumn(
            mappingName: key,
            width: 180,
            columnWidthMode: ColumnWidthMode.header,
            headerText: key,
          ),
        );
    });
    return encabezados;
  }

  SfDataGridTheme _dataGridSample() {
    return SfDataGridTheme(
      data: SfDataGridThemeData(
          brightness: Brightness.light,
          headerStyle: DataGridHeaderCellStyle(
              backgroundColor: Color.fromRGBO(51, 63, 85, 1),
              // backgroundColor: Color(0xFF6C59CF),
              textStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
              hoverColor: Color.fromRGBO(15, 20, 26, 1).withOpacity(0.3)
              // hoverColor: Color(0xFF9588D7).withOpacity(0.6)
              )),
      child: SfDataGrid(
        source: datoSource,
        columnSizer: _columnSizer,
        frozenColumnsCount: 1,
        onQueryRowHeight: (RowHeightDetails rowHeightDetails) {
          final double height =
              _columnSizer.getAutoRowHeight(rowHeightDetails.rowIndex);
          return height;
        },
        columnWidthMode: ColumnWidthMode.auto,
        cellBuilder: getCellWidget,
        isScrollbarAlwaysShown: true,
        navigationMode: GridNavigationMode.cell,
        allowMultiColumnSorting: true,
        allowSorting: true,
        gridLinesVisibility: gridLineVisibility,
        onQueryRowStyle: (QueryRowStyleArgs args) {
          return ((args.rowIndex) % 2 == 0)
              ? DataGridCellStyle(
                  // backgroundColor:  const Color(0xFF2E2946),
                  backgroundColor: Color.fromRGBO(245, 244, 255, 1),
                  textStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                )
              : null;
        },
        columns: obtenTitulos(),
      ),
    );
  }

/*------------------------------------------------------------------------*/

  construyeMenu() {
    return PopupMenuButton(
      icon: Icon(
        Icons.view_headline,
        color: Color.fromRGBO(163, 173, 200, 1),
      ),
      elevation: 3.2,
      initialValue: _selectedChoices,
      tooltip: 'Activar Grids',
      onSelected: _select,
      itemBuilder: (BuildContext context) {
        return choices.map((CustomPopupMenu choice) {
          return PopupMenuItem(
            value: choice,
            child: Text(choice.title),
          );
        }).toList();
      },
    );
  }

  _select(CustomPopupMenu choice) {
    setState(() {
      _selectedChoices = choice;
      switch (choice.title) {
        case 'Ambos':
          gridLineVisibility = GridLinesVisibility.both;
          break;
        case 'Horizontal':
          gridLineVisibility = GridLinesVisibility.horizontal;
          break;
        case 'Ninguno':
          gridLineVisibility = GridLinesVisibility.none;
          break;
        case 'Vertical':
          gridLineVisibility = GridLinesVisibility.vertical;
      }
    });
  }
}

class CarteraDataGridSource extends DataGridSource<Cartera> {
  CarteraDataGridSource();
  Cartera eci = Cartera();
  @override
  List<Cartera> get dataSource => corteCartera;
  @override
  Object getValue(Cartera _datos, String columName) {
    return eci.obtenValor(columName, _datos);
  }
}

class CustomPopupMenu {
  CustomPopupMenu({this.title, this.icon});
  String title;
  IconData icon;
}
