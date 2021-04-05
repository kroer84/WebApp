// To parse this JSON data, do
//
//     final reporte2 = reporte2FromJson(jsonString);

import 'dart:convert';

List<CorteOperaciones> corteOperacionesFromJson(String str) => List<CorteOperaciones>.from(json.decode(str).map((x) => CorteOperaciones.fromJson(x)));

class CorteOperaciones {
    CorteOperaciones({
        this.banco,
        this.caja,
        this.clabeBancaria,
        this.claveParticipante,
        this.codigo,
        this.conceptoPago,
        this.descripcion,
        this.estatus,
        this.fechaMili,
        this.fechaSolicitud,
        this.importe,
        this.nombreParticipante,
        this.rfc,
    });

    String banco;
    String caja;
    String clabeBancaria;
    String claveParticipante;
    String codigo;
    String conceptoPago;
    String descripcion;
    String estatus;
    int fechaMili;
    String fechaSolicitud;
    int importe;
    String nombreParticipante;
    String rfc;

    factory CorteOperaciones.fromJson(Map<String, dynamic> json) => CorteOperaciones(
        banco: json["banco"],
        caja: json["caja"],
        clabeBancaria: json["clabe_bancaria"],
        claveParticipante: json["clave_participante"],
        codigo: json["codigo"],
        conceptoPago: json["concepto_pago"],
        descripcion: json["descripcion"],
        estatus: json["estatus"],
        fechaMili: json["fecha_mili"],
        fechaSolicitud: json["fecha_solicitud"],
        importe: json["importe"],
        nombreParticipante: json["nombre_participante"],
        rfc: json["rfc"],
    );

    Map titulos = {
    "banco":"Texto",
    "caja":"Texto",
    "clabe_bancaria":"Texto",
    "clave_participante":"Texto",
    "codigo":"Texto",
    "concepto_pago":"Texto",
    "descripcion":"Texto",
    "estatus":"Texto",
    "fecha_mili":"Texto",
    "fecha_solicitud":"Texto",
    "importe":"Moneda",
    "nombre_participante":"Texto",
    "rfc":"Texto",
    };

  obtenValor(String valor, CorteOperaciones _datos) {
    switch (valor) {
      case 'banco':   return _datos.banco;break;
      case 'caja':    return _datos.caja;break;
      case 'clabe_bancaria':   return _datos.clabeBancaria;break;
      case 'clave_participante':   return _datos.claveParticipante;break;
      case 'codigo':    return _datos.codigo;break;
      case 'concepto_pago':    return _datos.conceptoPago;break;
      case 'descripcion':   return _datos.descripcion;break;
      case 'estatus':   return _datos.estatus;break;
      case 'fecha_mili':   return _datos.fechaMili;break;
      case 'fecha_solicitud':   return _datos.fechaSolicitud;break;
      case 'importe':   return _datos.importe;break;
      case 'nombre':    return _datos.nombreParticipante;break;
      case 'rfc':   return _datos.rfc;break;
      default: return 'vacio'; break;
    }
  }
}
