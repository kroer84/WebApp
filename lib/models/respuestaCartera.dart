// To parse this JSON data, do
//
//     final cartera = carteraFromJson(jsonString);

import 'dart:convert';

//List<CorteOperaciones> corteOperacionesFromJson(String str) => List<CorteOperaciones>.from(json.decode(str).map((x) => CorteOperaciones.fromJson(x)));
List<Cartera> carteraFromJson(String str) =>
    List<Cartera>.from(json.decode(str).map((x) => Cartera.fromJson(x)));

// String carteraToJson(List<Cartera> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cartera {
  Cartera({
    this.ac,
    this.clave,
    this.empresa,
    this.headCount,
    this.idEmpresa,
    this.periodos,
    this.producto,
  });

  String ac;
  String clave;
  String empresa;
  int headCount;
  int idEmpresa;
  List<PeriodoElement> periodos;
  String producto;

  factory Cartera.fromJson(Map<String, dynamic> json) => Cartera(
        empresa: json["empresa"],
        ac: json["ac"],
        clave: json["clave"],
        producto: json["producto"],
        headCount: json["head_count"],
        idEmpresa: json["idEmpresa"],
        periodos: List<PeriodoElement>.from(
            json["periodos"].map((x) => PeriodoElement.fromJson(x))),
      );

  Map titulos = {
    "ac": "Texto",
    "clave": "Texto",
    "empresa": "Texto",
    "head_count": "Entero",
    "idEmpresa": "Entero",
    "periodos": "Texto",
    "producto": "Texto",
  };

  obtenValor(String valor, Cartera _datos) {
    switch (valor) {
      case 'banco':
        return _datos.ac;
        break;
      case 'caja':
        return _datos.clave;
        break;
      case 'clabe_bancaria':
        return _datos.empresa;
        break;
      case 'clave_participante':
        return _datos.headCount;
        break;
      case 'codigo':
        return _datos.idEmpresa;
        break;
      case 'concepto_pago':
        return _datos.periodos;
        break;
      case 'descripcion':
        return _datos.producto;
        break;
    }
  }

  Map<String, dynamic> toJson() => {
        "ac": ac,
        "clave": clave,
        "empresa": empresa,
        "head_count": headCount,
        "idEmpresa": idEmpresa,
        "periodos": List<dynamic>.from(periodos.map((x) => x.toJson())),
        "producto": producto,
      };
}

class PeriodoElement {
  PeriodoElement({
    this.ahorro,
    this.cartera,
    this.intereses,
    this.numParticipantes,
    this.periodo,
    this.porcParticipacion,
    this.termCartera,
    this.termParticipantes,
  });

  double ahorro;
  double cartera;
  int intereses;
  int numParticipantes;
  PeriodoEnum periodo;
  double porcParticipacion;
  double termCartera;
  double termParticipantes;

  factory PeriodoElement.fromJson(Map<String, dynamic> json) => PeriodoElement(
        ahorro: json["ahorro"].toDouble(),
        cartera: json["cartera"].toDouble(),
        intereses: json["intereses"],
        numParticipantes: json["num_participantes"],
        periodo: periodoEnumValues.map[json["periodo"]],
        porcParticipacion: json["porc_participacion"].toDouble(),
        termCartera: json["term_cartera"].toDouble(),
        termParticipantes: json["term_participantes"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "ahorro": ahorro,
        "cartera": cartera,
        "intereses": intereses,
        "num_participantes": numParticipantes,
        "periodo": periodoEnumValues.reverse[periodo],
        "porc_participacion": porcParticipacion,
        "term_cartera": termCartera,
        "term_participantes": termParticipantes,
      };
}

enum PeriodoEnum {
  DICIEMBRE_2020,
  ENERO_2021,
  FEBRERO_2021,
  MARZO_2021,
  ABRIL_2021
}

final periodoEnumValues = EnumValues({
  "Abril 2021": PeriodoEnum.ABRIL_2021,
  "Diciembre 2020": PeriodoEnum.DICIEMBRE_2020,
  "Enero 2021": PeriodoEnum.ENERO_2021,
  "Febrero 2021": PeriodoEnum.FEBRERO_2021,
  "Marzo 2021": PeriodoEnum.MARZO_2021
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
