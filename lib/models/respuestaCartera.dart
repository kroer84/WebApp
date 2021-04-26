// To parse this JSON data, do
//
//     final cartera = carteraFromJson(jsonString);

import 'dart:convert';

List<Cartera> carteraFromJson(String str) =>
    List<Cartera>.from(json.decode(str).map((x) => Cartera.fromJson(x)));

String carteraToJson(List<Cartera> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

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
        ac: json["ac"],
        clave: json["clave"],
        empresa: json["empresa"],
        headCount: json["head_count"],
        idEmpresa: json["idEmpresa"],
        periodos: List<PeriodoElement>.from(
            json["periodos"].map((x) => PeriodoElement.fromJson(x))),
        producto: json["producto"],
      );

  Map<String, dynamic> toJson() => {
        "ac": ac,
        "clave": clave,
        "empresa": empresa,
        "head_count": headCount,
        "idEmpresa": idEmpresa,
        "periodos": List<dynamic>.from(periodos.map((x) => x.toJson())),
        "producto": producto,
      };
  Map titulos = {
    "ac": "Texto",
    "clave": "Texto",
    "empresa": "Texto",
    "head_count": "Entero",
    "idEmpresa": "Entero",
    "periodos": List<dynamic>.empty(),
    "producto": "Texto",
  };

  obtenValor(String valor, Cartera _datos) {
    switch (valor) {
      case 'ac':
        return _datos.ac;
        break;
      case 'clave':
        return _datos.clave;
        break;
      case 'empresa':
        return _datos.empresa;
        break;
      case 'head_count':
        return _datos.headCount;
        break;
      case 'idEmpresa':
        return _datos.idEmpresa;
        break;
      case 'periodos':
        return _datos.periodos;
        break;
      case 'producto':
        return _datos.producto;
        break;
      default:
        return 'vacio';
        break;
    }
  }
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

  Map titulos = {
    "ahorro": "Texto",
    "cartera": "Texto",
    "intereses": "Texto",
    "num_participantes": "Texto",
    "periodo": "Texto",
    "porc_participacion": "Texto",
    "term_cartera": "Texto",
    "term_participantes": "Texto",
  };

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
