// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
    Welcome({
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

    Banco banco;
    Caja caja;
    String clabeBancaria;
    String claveParticipante;
    Codigo codigo;
    String conceptoPago;
    Descripcion descripcion;
    Estatus estatus;
    int fechaMili;
    FechaSolicitud fechaSolicitud;
    int importe;
    String nombreParticipante;
    String rfc;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        banco: bancoValues.map[json["banco"]],
        caja: cajaValues.map[json["caja"]],
        clabeBancaria: json["clabe_bancaria"],
        claveParticipante: json["clave_participante"],
        codigo: codigoValues.map[json["codigo"]],
        conceptoPago: json["concepto_pago"],
        descripcion: descripcionValues.map[json["descripcion"]],
        estatus: estatusValues.map[json["estatus"]],
        fechaMili: json["fecha_mili"],
        fechaSolicitud: fechaSolicitudValues.map[json["fecha_solicitud"]],
        importe: json["importe"],
        nombreParticipante: json["nombre_participante"],
        rfc: json["rfc"],
    );

    Map<String, dynamic> toJson() => {
        "banco": bancoValues.reverse[banco],
        "caja": cajaValues.reverse[caja],
        "clabe_bancaria": clabeBancaria,
        "clave_participante": claveParticipante,
        "codigo": codigoValues.reverse[codigo],
        "concepto_pago": conceptoPago,
        "descripcion": descripcionValues.reverse[descripcion],
        "estatus": estatusValues.reverse[estatus],
        "fecha_mili": fechaMili,
        "fecha_solicitud": fechaSolicitudValues.reverse[fechaSolicitud],
        "importe": importe,
        "nombre_participante": nombreParticipante,
        "rfc": rfc,
    };
}

enum Banco { BANCA_AFIRME_S_A }

final bancoValues = EnumValues({
    "BANCA AFIRME, S.A.": Banco.BANCA_AFIRME_S_A
});

enum Caja { APOYA_CMXP3 }

final cajaValues = EnumValues({
    "ApoyaCMXP3": Caja.APOYA_CMXP3
});

enum Codigo { CODIGO }

final codigoValues = EnumValues({
    "Codigo": Codigo.CODIGO
});

enum Descripcion { PRSTAMO }

final descripcionValues = EnumValues({
    "Préstamo": Descripcion.PRSTAMO
});

enum Estatus { NO_OPERADA, EMPTY }

final estatusValues = EnumValues({
    "": Estatus.EMPTY,
    "NO OPERADA": Estatus.NO_OPERADA
});

enum FechaSolicitud { THE_09122019113141, THE_05122019161047, THE_05122019155655 }

final fechaSolicitudValues = EnumValues({
    "05/12/2019 15:56:55": FechaSolicitud.THE_05122019155655,
    "05/12/2019 16:10:47": FechaSolicitud.THE_05122019161047,
    "09/12/2019 11:31:41": FechaSolicitud.THE_09122019113141
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
