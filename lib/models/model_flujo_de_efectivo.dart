// To parse this JSON data, do
//
//     final flujoDeEfectivo = flujoDeEfectivoFromJson(jsonString);

import 'dart:convert';

List<FlujoDeEfectivo> flujoDeEfectivoFromJson(String str) =>
    List<FlujoDeEfectivo>.from(
        json.decode(str).map((x) => FlujoDeEfectivo.fromJson(x)));

String flujoDeEfectivoToJson(List<FlujoDeEfectivo> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FlujoDeEfectivo {
  FlujoDeEfectivo({
    this.aportacion,
    this.empresas,
    this.fondeo,
    this.intereses,
    this.invertido,
    this.liquidacion,
    this.mesEmpresa,
    this.necEfectivo,
    this.pagoAcmFija,
    this.pagoAcmVariable,
    this.pagoExcedido,
    this.pagoPrestamo,
    this.posicion,
    this.prestamo,
    this.retiro,
    this.totalEgreso,
    this.totalIngreso,
  });

  int aportacion;
  List<FlujoDeEfectivo> empresas;
  int fondeo;
  int intereses;
  int invertido;
  int liquidacion;
  String mesEmpresa;
  double necEfectivo;
  int pagoAcmFija;
  int pagoAcmVariable;
  int pagoExcedido;
  double pagoPrestamo;
  int posicion;
  double prestamo;
  double retiro;
  double totalEgreso;
  double totalIngreso;

  factory FlujoDeEfectivo.fromJson(Map<String, dynamic> json) =>
      FlujoDeEfectivo(
        aportacion: json["aportacion"],
        empresas: json["empresas"] == null
            ? null
            : List<FlujoDeEfectivo>.from(
                json["empresas"].map((x) => FlujoDeEfectivo.fromJson(x))),
        fondeo: json["fondeo"],
        intereses: json["intereses"],
        invertido: json["invertido"],
        liquidacion: json["liquidacion"],
        mesEmpresa: json["mes_empresa"],
        necEfectivo: json["nec_efectivo"].toDouble(),
        pagoAcmFija: json["pago_acm_fija"],
        pagoAcmVariable: json["pago_acm_variable"],
        pagoExcedido: json["pago_excedido"],
        pagoPrestamo: json["pago_prestamo"].toDouble(),
        posicion: json["posicion"],
        prestamo: json["prestamo"].toDouble(),
        retiro: json["retiro"].toDouble(),
        totalEgreso: json["total_egreso"].toDouble(),
        totalIngreso: json["total_ingreso"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "aportacion": aportacion,
        "empresas": empresas == null
            ? null
            : List<dynamic>.from(empresas.map((x) => x.toJson())),
        "fondeo": fondeo,
        "intereses": intereses,
        "invertido": invertido,
        "liquidacion": liquidacion,
        "mes_empresa": mesEmpresa,
        "nec_efectivo": necEfectivo,
        "pago_acm_fija": pagoAcmFija,
        "pago_acm_variable": pagoAcmVariable,
        "pago_excedido": pagoExcedido,
        "pago_prestamo": pagoPrestamo,
        "posicion": posicion,
        "prestamo": prestamo,
        "retiro": retiro,
        "total_egreso": totalEgreso,
        "total_ingreso": totalIngreso,
      };
  Map titulos = {
    "aportacion": "Entero",
    "empresas": List<dynamic>.empty(),
    "fondeo": "Entero",
    "intereses": "Entero",
    "invertido": "Entero",
    "liquidacion": "Entero",
    "mes_empresa": "Texto",
    "nec_efectivo": "Entero",
    "pago_acm_fija": "Entero",
    "pago_acm_variable": "Entero",
    "pago_excedido": "Entero",
    "pago_prestamo": "Entero",
    "posicion": "Entero",
    "prestamo": "Entero",
    "retiro": "Entero",
    "total_egreso": "Entero",
    "total_ingreso": "Entero",
  };

  obtenValor(String valor, FlujoDeEfectivo _datos) {
    switch (valor) {
      case 'aportacion':
        return _datos.aportacion;
        break;
      case 'empresas':
        return _datos.empresas;
        break;
      case 'fondeo':
        return _datos.fondeo;
        break;
      case 'intereses':
        return _datos.intereses;
        break;
      case 'invertido':
        return _datos.invertido;
        break;
      case 'liquidacion':
        return _datos.liquidacion;
        break;
      case 'mes_empresa':
        return _datos.mesEmpresa;
        break;
      case 'nec_efectivo':
        return _datos.necEfectivo;
        break;
      case 'pago_acm_fija':
        return _datos.pagoAcmFija;
        break;
      case 'pago_acm_variable':
        return _datos.pagoAcmVariable;
        break;
      case 'pago_excedido':
        return _datos.pagoExcedido;
        break;
      case 'pago_prestamo':
        return _datos.pagoPrestamo;
        break;
      case 'posicion':
        return _datos.posicion;
        break;
      case 'prestamo':
        return _datos.prestamo;
        break;
      case 'total_egreso':
        return _datos.totalEgreso;
        break;
      case 'total_ingreso':
        return _datos.totalIngreso;
        break;
      default:
        return 'vacio';
        break;
    }
  }
}
