// To parse this JSON data, do
//
//     final edoCuentaIndividual = edoCuentaIndividualFromJson(jsonString);

import 'dart:convert';

List<EdoCuentaIndividual> edoCuentaIndividualFromJson(String str) => List<EdoCuentaIndividual>.from(json.decode(str).map((x) => EdoCuentaIndividual.fromJson(x)));

String edoCuentaIndividualToJson(List<EdoCuentaIndividual> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EdoCuentaIndividual {
  EdoCuentaIndividual({
    this.nombre,
    this.identificador,
    this.idCuenta,
    this.estatus,
    this.fechaLiqidacion,
    this.identificadorReporte,
    this.apoEmpresa,
    this.apoEmpleado,
    this.apoVoluntaria,
    this.intApoEmpresa,
    this.intApoEmpleado,
    this.intApoVoluntaria,
    this.prestamo,
    this.intPrestamo,
    this.comision,
    this.retiroEmpresa,
    this.retiroParticipante,
    this.retiroParticipanteVol,
    this.retiroPagoExcedido,
    this.retiroExtraordinarias,
    this.movTransito,
    this.intMovTransito,
    this.liquidacion,
    this.prepagoCapital,
    this.prepagoIntereses,
    this.pagoExcedido,
    this.intPagoExcedido,
    this.saldoAportaciones,
    this.saldoPrestamos,
    this.saldoIntereses,
    this.saldoTotalDelFondo,
    this.saldoALiquidar,
    this.saldoPrepago,
    this.saldoRetiro,
    this.intRecibidosPorPrestamo,
    this.ahorroDeLiquidaciones,
    this.recuperacionDePrestamosPorLiquidaciones,
    this.recuperacionDeRetirosPorLiquidaciones,
    this.aportacionExtraordinaria,
    this.intAportacionExtraordinaria,
    this.intRecPorDifLiquidacion,
    this.saldoInteresesTp,
    this.comisionDepositosExtr,
    this.comisionSeguro,
    this.comisionAdministracion,
    this.comisionLiquidacion,
    this.premioAlAhorro,
    this.saldoTotalRecibido,
    this.saldoEgresos,
    this.comisionRetiro,
    this.recuperacionDeComisionPorAdministracion,
    this.recuperacionDeComisionDeRetiro,
    this.intPremioAlAhorro,
    this.porcentajeInt,
    this.porcentajeIntRecXPres,
    this.porcentajeTotal,
    this.region,
    this.sucursal,
    this.nomina,
    this.contrato,
    this.tipoParticipante,
    this.puesto,
    this.clabe,
    this.banco,
    this.idParticipante,
    this.retiroIntEmpresa,
    this.retiroIntEmpleado,
    this.retiroIntEmpleadoVol,
    this.retiroIntPagoExcedido,
    this.retiroIntRecXPres,
    this.retiroIntRecXLiq,
    this.retiroPremioAlAhorro,
    this.retiroIntExtraordinaria,
    this.retiroIntPremioAlAhorro,
    this.prestamoEmpresa,
    this.prestamoEmpleado,
    this.prestamoVoluntaria,
    this.prestamoExtraordinaria,
    this.intPrestamoEmpresa,
    this.intPrestamoEmpleado,
    this.intPrestamoVoluntaria,
    this.intPrestamoExtraordinaria,
    this.intRecPrestamoEmpresa,
    this.intRecPrestamoEmpleado,
    this.intRecPrestamoVoluntaria,
    this.intRecPrestamoExtraordinaria,
    this.comisionPrestamoEmpresa,
    this.comisionPrestamoEmpleado,
    this.comisionPrestamoVoluntaria,
    this.comisionPrestamoExtraordinaria,
    this.comisionRetiroEmpresa,
    this.comisionRetiroEmpleado,
    this.comisionRetiroVoluntaria,
    this.comisionRetiroExtraordinaria,
    this.prepagoCapitalEmpresa,
    this.prepagoInteresEmpresa,
    this.prepagoCapitalEmpleado,
    this.prepagoInteresEmpleado,
    this.prepagoCapitalVoluntaria,
    this.prepagoInteresVoluntaria,
    this.prepagoCapitalExtraordinaria,
    this.prepagoInteresExtraordinaria,
    this.interesGanadoAnio,
  });

  String nombre;
  int identificador;
  int idCuenta;
  int estatus;
  int fechaLiqidacion;
  String identificadorReporte;
  double apoEmpresa;
  double apoEmpleado;
  double apoVoluntaria;
  double intApoEmpresa;
  double intApoEmpleado;
  double intApoVoluntaria;
  double prestamo;
  double intPrestamo;
  double comision;
  double retiroEmpresa;
  double retiroParticipante;
  double retiroParticipanteVol;
  double retiroPagoExcedido;
  double retiroExtraordinarias;
  double movTransito;
  double intMovTransito;
  double liquidacion;
  double prepagoCapital;
  double prepagoIntereses;
  double pagoExcedido;
  double intPagoExcedido;
  double saldoAportaciones;
  double saldoPrestamos;
  double saldoIntereses;
  double saldoTotalDelFondo;
  double saldoALiquidar;
  double saldoPrepago;
  double saldoRetiro;
  double intRecibidosPorPrestamo;
  double ahorroDeLiquidaciones;
  double recuperacionDePrestamosPorLiquidaciones;
  double recuperacionDeRetirosPorLiquidaciones;
  double aportacionExtraordinaria;
  double intAportacionExtraordinaria;
  double intRecPorDifLiquidacion;
  double saldoInteresesTp;
  double comisionDepositosExtr;
  double comisionSeguro;
  double comisionAdministracion;
  double comisionLiquidacion;
  double premioAlAhorro;
  double saldoTotalRecibido;
  double saldoEgresos;
  double comisionRetiro;
  double recuperacionDeComisionPorAdministracion;
  double recuperacionDeComisionDeRetiro;
  double intPremioAlAhorro;
  double porcentajeInt;
  double porcentajeIntRecXPres;
  double porcentajeTotal;
  String region;
  String sucursal;
  String nomina;
  String contrato;
  String tipoParticipante;
  String puesto;
  String clabe;
  String banco;
  String idParticipante;
  double retiroIntEmpresa;
  double retiroIntEmpleado;
  double retiroIntEmpleadoVol;
  double retiroIntPagoExcedido;
  double retiroIntRecXPres;
  double retiroIntRecXLiq;
  double retiroPremioAlAhorro;
  double retiroIntExtraordinaria;
  double retiroIntPremioAlAhorro;
  double prestamoEmpresa;
  double prestamoEmpleado;
  double prestamoVoluntaria;
  double prestamoExtraordinaria;
  double intPrestamoEmpresa;
  double intPrestamoEmpleado;
  double intPrestamoVoluntaria;
  double intPrestamoExtraordinaria;
  double intRecPrestamoEmpresa;
  double intRecPrestamoEmpleado;
  double intRecPrestamoVoluntaria;
  double intRecPrestamoExtraordinaria;
  double comisionPrestamoEmpresa;
  double comisionPrestamoEmpleado;
  double comisionPrestamoVoluntaria;
  double comisionPrestamoExtraordinaria;
  double comisionRetiroEmpresa;
  double comisionRetiroEmpleado;
  double comisionRetiroVoluntaria;
  double comisionRetiroExtraordinaria;
  double prepagoCapitalEmpresa;
  double prepagoInteresEmpresa;
  double prepagoCapitalEmpleado;
  double prepagoInteresEmpleado;
  double prepagoCapitalVoluntaria;
  double prepagoInteresVoluntaria;
  double prepagoCapitalExtraordinaria;
  double prepagoInteresExtraordinaria;
  double interesGanadoAnio;

  factory EdoCuentaIndividual.fromJson(Map<String, dynamic> json) => EdoCuentaIndividual(
    nombre: json["nombre"],
    identificador: json["identificador"],
    idCuenta: json["idCuenta"],
    estatus: json["estatus"],
    fechaLiqidacion: json["fechaLiqidacion"],
    identificadorReporte: json["identificadorReporte"],
    apoEmpresa: json["apoEmpresa"],
    apoEmpleado: json["apoEmpleado"],
    apoVoluntaria: json["apoVoluntaria"],
    intApoEmpresa: json["intApoEmpresa"],
    intApoEmpleado: json["intApoEmpleado"],
    intApoVoluntaria: json["intApoVoluntaria"],
    prestamo: json["prestamo"],
    intPrestamo: json["intPrestamo"],
    comision: json["comision"],
    retiroEmpresa: json["retiroEmpresa"],
    retiroParticipante: json["retiroParticipante"],
    retiroParticipanteVol: json["retiroParticipanteVol"],
    retiroPagoExcedido: json["retiroPagoExcedido"],
    retiroExtraordinarias: json["retiroExtraordinarias"],
    movTransito: json["movTransito"],
    intMovTransito: json["intMovTransito"],
    liquidacion: json["liquidacion"],
    prepagoCapital: json["prepagoCapital"],
    prepagoIntereses: json["prepagoIntereses"],
    pagoExcedido: json["pagoExcedido"],
    intPagoExcedido: json["intPagoExcedido"],
    saldoAportaciones: json["saldoAportaciones"],
    saldoPrestamos: json["saldoPrestamos"],
    saldoIntereses: json["saldoIntereses"],
    saldoTotalDelFondo: json["saldoTotalDelFondo"],
    saldoALiquidar: json["saldoALiquidar"],
    saldoPrepago: json["saldoPrepago"],
    saldoRetiro: json["saldoRetiro"],
    intRecibidosPorPrestamo: json["intRecibidosPorPrestamo"],
    ahorroDeLiquidaciones: json["ahorroDeLiquidaciones"],
    recuperacionDePrestamosPorLiquidaciones: json["recuperacionDePrestamosPorLiquidaciones"],
    recuperacionDeRetirosPorLiquidaciones: json["recuperacionDeRetirosPorLiquidaciones"],
    aportacionExtraordinaria: json["aportacionExtraordinaria"],
    intAportacionExtraordinaria: json["intAportacionExtraordinaria"],
    intRecPorDifLiquidacion: json["intRecPorDifLiquidacion"],
    saldoInteresesTp: json["saldoInteresesTP"],
    comisionDepositosExtr: json["comisionDepositosExtr"],
    comisionSeguro: json["comisionSeguro"],
    comisionAdministracion: json["comisionAdministracion"],
    comisionLiquidacion: json["comisionLiquidacion"],
    premioAlAhorro: json["premioAlAhorro"],
    saldoTotalRecibido: json["saldoTotalRecibido"],
    saldoEgresos: json["saldoEgresos"],
    comisionRetiro: json["comisionRetiro"],
    recuperacionDeComisionPorAdministracion: json["recuperacionDeComisionPorAdministracion"],
    recuperacionDeComisionDeRetiro: json["recuperacionDeComisionDeRetiro"],
    intPremioAlAhorro: json["intPremioAlAhorro"],
    porcentajeInt: json["porcentajeInt"],
    porcentajeIntRecXPres: json["porcentajeIntRecXPres"],
    porcentajeTotal: json["porcentajeTotal"],
    region: json["region"],
    sucursal: json["sucursal"],
    nomina: json["nomina"],
    contrato: json["contrato"],
    tipoParticipante: json["tipoParticipante"],
    puesto: json["puesto"],
    clabe: json["clabe"],
    banco: json["banco"],
    idParticipante: json["idParticipante"],
    retiroIntEmpresa: json["retiroIntEmpresa"],
    retiroIntEmpleado: json["retiroIntEmpleado"],
    retiroIntEmpleadoVol: json["retiroIntEmpleadoVol"],
    retiroIntPagoExcedido: json["retiroIntPagoExcedido"],
    retiroIntRecXPres: json["retiroIntRecXPres"],
    retiroIntRecXLiq: json["retiroIntRecXLiq"],
    retiroPremioAlAhorro: json["retiroPremioAlAhorro"],
    retiroIntExtraordinaria: json["retiroIntExtraordinaria"],
    retiroIntPremioAlAhorro: json["retiroIntPremioAlAhorro"],
    prestamoEmpresa: json["prestamoEmpresa"],
    prestamoEmpleado: json["prestamoEmpleado"],
    prestamoVoluntaria: json["prestamoVoluntaria"],
    prestamoExtraordinaria: json["prestamoExtraordinaria"],
    intPrestamoEmpresa: json["intPrestamoEmpresa"],
    intPrestamoEmpleado: json["intPrestamoEmpleado"],
    intPrestamoVoluntaria: json["intPrestamoVoluntaria"],
    intPrestamoExtraordinaria: json["intPrestamoExtraordinaria"],
    intRecPrestamoEmpresa: json["intRecPrestamoEmpresa"],
    intRecPrestamoEmpleado: json["intRecPrestamoEmpleado"],
    intRecPrestamoVoluntaria: json["intRecPrestamoVoluntaria"],
    intRecPrestamoExtraordinaria: json["intRecPrestamoExtraordinaria"],
    comisionPrestamoEmpresa: json["comisionPrestamoEmpresa"],
    comisionPrestamoEmpleado: json["comisionPrestamoEmpleado"],
    comisionPrestamoVoluntaria: json["comisionPrestamoVoluntaria"],
    comisionPrestamoExtraordinaria: json["comisionPrestamoExtraordinaria"],
    comisionRetiroEmpresa: json["comisionRetiroEmpresa"],
    comisionRetiroEmpleado: json["comisionRetiroEmpleado"],
    comisionRetiroVoluntaria: json["comisionRetiroVoluntaria"],
    comisionRetiroExtraordinaria: json["comisionRetiroExtraordinaria"],
    prepagoCapitalEmpresa: json["prepagoCapitalEmpresa"],
    prepagoInteresEmpresa: json["prepagoInteresEmpresa"],
    prepagoCapitalEmpleado: json["prepagoCapitalEmpleado"],
    prepagoInteresEmpleado: json["prepagoInteresEmpleado"],
    prepagoCapitalVoluntaria: json["prepagoCapitalVoluntaria"],
    prepagoInteresVoluntaria: json["prepagoInteresVoluntaria"],
    prepagoCapitalExtraordinaria: json["prepagoCapitalExtraordinaria"],
    prepagoInteresExtraordinaria: json["prepagoInteresExtraordinaria"],
    interesGanadoAnio: json["interesGanadoAño"],
  );

  Map<String, dynamic> toJson() => {
    "nombre": nombre,
    "identificador": identificador,
    "idCuenta": idCuenta,
    "estatus": estatus,
    "fechaLiqidacion": fechaLiqidacion,
    "identificadorReporte": identificadorReporte,
    "apoEmpresa": apoEmpresa,
    "apoEmpleado": apoEmpleado,
    "apoVoluntaria": apoVoluntaria,
    "intApoEmpresa": intApoEmpresa,
    "intApoEmpleado": intApoEmpleado,
    "intApoVoluntaria": intApoVoluntaria,
    "prestamo": prestamo,
    "intPrestamo": intPrestamo,
    "comision": comision,
    "retiroEmpresa": retiroEmpresa,
    "retiroParticipante": retiroParticipante,
    "retiroParticipanteVol": retiroParticipanteVol,
    "retiroPagoExcedido": retiroPagoExcedido,
    "retiroExtraordinarias": retiroExtraordinarias,
    "movTransito": movTransito,
    "intMovTransito": intMovTransito,
    "liquidacion": liquidacion,
    "prepagoCapital": prepagoCapital,
    "prepagoIntereses": prepagoIntereses,
    "pagoExcedido": pagoExcedido,
    "intPagoExcedido": intPagoExcedido,
    "saldoAportaciones": saldoAportaciones,
    "saldoPrestamos": saldoPrestamos,
    "saldoIntereses": saldoIntereses,
    "saldoTotalDelFondo": saldoTotalDelFondo,
    "saldoALiquidar": saldoALiquidar,
    "saldoPrepago": saldoPrepago,
    "saldoRetiro": saldoRetiro,
    "intRecibidosPorPrestamo": intRecibidosPorPrestamo,
    "ahorroDeLiquidaciones": ahorroDeLiquidaciones,
    "recuperacionDePrestamosPorLiquidaciones": recuperacionDePrestamosPorLiquidaciones,
    "recuperacionDeRetirosPorLiquidaciones": recuperacionDeRetirosPorLiquidaciones,
    "aportacionExtraordinaria": aportacionExtraordinaria,
    "intAportacionExtraordinaria": intAportacionExtraordinaria,
    "intRecPorDifLiquidacion": intRecPorDifLiquidacion,
    "saldoInteresesTP": saldoInteresesTp,
    "comisionDepositosExtr": comisionDepositosExtr,
    "comisionSeguro": comisionSeguro,
    "comisionAdministracion": comisionAdministracion,
    "comisionLiquidacion": comisionLiquidacion,
    "premioAlAhorro": premioAlAhorro,
    "saldoTotalRecibido": saldoTotalRecibido,
    "saldoEgresos": saldoEgresos,
    "comisionRetiro": comisionRetiro,
    "recuperacionDeComisionPorAdministracion": recuperacionDeComisionPorAdministracion,
    "recuperacionDeComisionDeRetiro": recuperacionDeComisionDeRetiro,
    "intPremioAlAhorro": intPremioAlAhorro,
    "porcentajeInt": porcentajeInt,
    "porcentajeIntRecXPres": porcentajeIntRecXPres,
    "porcentajeTotal": porcentajeTotal,
    "region": region,
    "sucursal": sucursal,
    "nomina": nomina,
    "contrato": contrato,
    "tipoParticipante": tipoParticipante,
    "puesto": puesto,
    "clabe": clabe,
    "banco": banco,
    "idParticipante": idParticipante,
    "retiroIntEmpresa": retiroIntEmpresa,
    "retiroIntEmpleado": retiroIntEmpleado,
    "retiroIntEmpleadoVol": retiroIntEmpleadoVol,
    "retiroIntPagoExcedido": retiroIntPagoExcedido,
    "retiroIntRecXPres": retiroIntRecXPres,
    "retiroIntRecXLiq": retiroIntRecXLiq,
    "retiroPremioAlAhorro": retiroPremioAlAhorro,
    "retiroIntExtraordinaria": retiroIntExtraordinaria,
    "retiroIntPremioAlAhorro": retiroIntPremioAlAhorro,
    "prestamoEmpresa": prestamoEmpresa,
    "prestamoEmpleado": prestamoEmpleado,
    "prestamoVoluntaria": prestamoVoluntaria,
    "prestamoExtraordinaria": prestamoExtraordinaria,
    "intPrestamoEmpresa": intPrestamoEmpresa,
    "intPrestamoEmpleado": intPrestamoEmpleado,
    "intPrestamoVoluntaria": intPrestamoVoluntaria,
    "intPrestamoExtraordinaria": intPrestamoExtraordinaria,
    "intRecPrestamoEmpresa": intRecPrestamoEmpresa,
    "intRecPrestamoEmpleado": intRecPrestamoEmpleado,
    "intRecPrestamoVoluntaria": intRecPrestamoVoluntaria,
    "intRecPrestamoExtraordinaria": intRecPrestamoExtraordinaria,
    "comisionPrestamoEmpresa": comisionPrestamoEmpresa,
    "comisionPrestamoEmpleado": comisionPrestamoEmpleado,
    "comisionPrestamoVoluntaria": comisionPrestamoVoluntaria,
    "comisionPrestamoExtraordinaria": comisionPrestamoExtraordinaria,
    "comisionRetiroEmpresa": comisionRetiroEmpresa,
    "comisionRetiroEmpleado": comisionRetiroEmpleado,
    "comisionRetiroVoluntaria": comisionRetiroVoluntaria,
    "comisionRetiroExtraordinaria": comisionRetiroExtraordinaria,
    "prepagoCapitalEmpresa": prepagoCapitalEmpresa,
    "prepagoInteresEmpresa": prepagoInteresEmpresa,
    "prepagoCapitalEmpleado": prepagoCapitalEmpleado,
    "prepagoInteresEmpleado": prepagoInteresEmpleado,
    "prepagoCapitalVoluntaria": prepagoCapitalVoluntaria,
    "prepagoInteresVoluntaria": prepagoInteresVoluntaria,
    "prepagoCapitalExtraordinaria": prepagoCapitalExtraordinaria,
    "prepagoInteresExtraordinaria": prepagoInteresExtraordinaria,
    "interesGanadoAño": interesGanadoAnio,
  };

  Map titulos = {
    "nombre":"Texto",
    "identificador":"Entero",
    "idCuenta":"Texto",
    "estatus":"Tipo",
    "fechaLiqidacion":"Fecha",
    "identificadorReporte":"Texto",
    "apoEmpresa":"Moneda",
    "apoEmpleado":"Moneda",
    "apoVoluntaria":"Moneda",
    "intApoEmpresa":"Moneda",
    "intApoEmpleado":"Moneda",
    "intApoVoluntaria":"Moneda",
    "prestamo":"Moneda",
    "intPrestamo":"Moneda",
    "comision":"Moneda",
    "retiroEmpresa":"Moneda",
    "retiroParticipante":"Moneda",
    "retiroParticipanteVol":"Moneda",
    "retiroPagoExcedido":"Moneda",
    "retiroExtraordinarias":"Moneda",
    "movTransito":"Moneda",
    "intMovTransito":"Moneda",
    "liquidacion":"Moneda",
    "prepagoCapital":"Moneda",
    "prepagoIntereses":"Moneda",
    "pagoExcedido":"Moneda",
    "intPagoExcedido":"Moneda",
    "saldoAportaciones":"Moneda",
    "saldoPrestamos":"Moneda",
    "saldoIntereses":"Moneda",
    "saldoTotalDelFondo":"Moneda",
    "saldoALiquidar":"Moneda",
    "saldoPrepago":"Moneda",
    "saldoRetiro":"Moneda",
    "intRecibidosPorPrestamo":"Moneda",
    "ahorroDeLiquidaciones":"Moneda",
    "recuperacionDePrestamosPorLiquidaciones":"Moneda",
    "recuperacionDeRetirosPorLiquidaciones":"Moneda",
    "aportacionExtraordinaria":"Moneda",
    "intAportacionExtraordinaria":"Moneda",
    "intRecPorDifLiquidacion":"Moneda",
    "saldoInteresesTP":"Moneda",
    "comisionDepositosExtr":"Moneda",
    "comisionSeguro":"Moneda",
    "comisionAdministracion":"Moneda",
    "comisionLiquidacion":"Moneda",
    "premioAlAhorro":"Moneda",
    "saldoTotalRecibido":"Moneda",
    "saldoEgresos":"Moneda",
    "comisionRetiro":"Moneda",
    "recuperacionDeComisionPorAdministracion":"Moneda",
    "recuperacionDeComisionDeRetiro":"Moneda",
    "intPremioAlAhorro":"Moneda",
    "porcentajeInt":"Porcentaje",
    "porcentajeIntRecXPres":"Porcentaje",
    "porcentajeTotal":"Porcentaje",
    "region":"Texto",
    "sucursal":"Texto",
    "nomina":"Texto",
    "contrato":"Texto",
    "tipoParticipante":"Texto",
    "puesto":"Texto",
    "clabe":"Texto",
    "banco":"Texto",
    "idParticipante":"Texto",
    "retiroIntEmpresa":"Moneda",
    "retiroIntEmpleado":"Moneda",
    "retiroIntEmpleadoVol":"Moneda",
    "retiroIntPagoExcedido":"Moneda",
    "retiroIntRecXPres":"Moneda",
    "retiroIntRecXLiq":"Moneda",
    "retiroPremioAlAhorro":"Moneda",
    "retiroIntExtraordinaria":"Moneda",
    "retiroIntPremioAlAhorro":"Moneda",
    "prestamoEmpresa":"Moneda",
    "prestamoEmpleado":"Moneda",
    "prestamoVoluntaria":"Moneda",
    "prestamoExtraordinaria":"Moneda",
    "intPrestamoEmpresa":"Moneda",
    "intPrestamoEmpleado":"Moneda",
    "intPrestamoVoluntaria":"Moneda",
    "intPrestamoExtraordinaria":"Moneda",
    "intRecPrestamoEmpresa":"Moneda",
    "intRecPrestamoEmpleado":"Moneda",
    "intRecPrestamoVoluntaria":"Moneda",
    "intRecPrestamoExtraordinaria":"Moneda",
    "comisionPrestamoEmpresa":"Moneda",
    "comisionPrestamoEmpleado":"Moneda",
    "comisionPrestamoVoluntaria":"Moneda",
    "comisionPrestamoExtraordinaria":"Moneda",
    "comisionRetiroEmpresa":"Moneda",
    "comisionRetiroEmpleado":"Moneda",
    "comisionRetiroVoluntaria":"Moneda",
    "comisionRetiroExtraordinaria":"Moneda",
    "prepagoCapitalEmpresa":"Moneda",
    "prepagoInteresEmpresa":"Moneda",
    "prepagoCapitalEmpleado":"Moneda",
    "prepagoInteresEmpleado":"Moneda",
    "prepagoCapitalVoluntaria":"Moneda",
    "prepagoInteresVoluntaria":"Moneda",
    "prepagoCapitalExtraordinaria":"Moneda",
    "prepagoInteresExtraordinaria":"Moneda",
    "interesGanadoAño":"Moneda",
  };

  obtenValor(String valor, EdoCuentaIndividual _datos) {
    switch (valor) {
      case 'nombre': return _datos.nombre;break;
      case 'identificador': return _datos.identificador;break;
      case 'idCuenta': return _datos.idCuenta;break;
      case 'estatus': return _datos.estatus;break;
      case 'fechaLiqidacion': return _datos.fechaLiqidacion;break;
      case 'identificadorReporte': return _datos.identificadorReporte;break;
      case 'apoEmpresa': return _datos.apoEmpresa;break;
      case 'apoEmpleado': return _datos.apoEmpleado;break;
      case 'apoVoluntaria': return _datos.apoVoluntaria;break;
      case 'intApoEmpresa': return _datos.intApoEmpresa;break;
      case 'intApoEmpleado': return _datos.intApoEmpleado;break;
      case 'intApoVoluntaria': return _datos.intApoVoluntaria;break;
      case 'prestamo': return _datos.prestamo;break;
      case 'intPrestamo': return _datos.intPrestamo;break;
      case 'comision': return _datos.comision;break;
      case 'retiroEmpresa': return _datos.retiroEmpresa;break;
      case 'retiroParticipante': return _datos.retiroParticipante;break;
      case 'retiroParticipanteVol': return _datos.retiroParticipanteVol;break;
      case 'retiroPagoExcedido': return _datos.retiroPagoExcedido;break;
      case 'retiroExtraordinarias': return _datos.retiroExtraordinarias;break;
      case 'movTransito': return _datos.movTransito;break;
      case 'intMovTransito': return _datos.intMovTransito;break;
      case 'liquidacion': return _datos.liquidacion;break;
      case 'prepagoCapital': return _datos.prepagoCapital;break;
      case 'prepagoIntereses': return _datos.prepagoIntereses;break;
      case 'pagoExcedido': return _datos.pagoExcedido;break;
      case 'intPagoExcedido': return _datos.intPagoExcedido;break;
      case 'saldoAportaciones': return _datos.saldoAportaciones;break;
      case 'saldoPrestamos': return _datos.saldoPrestamos;break;
      case 'saldoIntereses': return _datos.saldoIntereses;break;
      case 'saldoTotalDelFondo': return _datos.saldoTotalDelFondo;break;
      case 'saldoALiquidar': return _datos.saldoALiquidar;break;
      case 'saldoPrepago': return _datos.saldoPrepago;break;
      case 'saldoRetiro': return _datos.saldoRetiro;break;
      case 'intRecibidosPorPrestamo': return _datos.intRecibidosPorPrestamo;break;
      case 'ahorroDeLiquidaciones': return _datos.ahorroDeLiquidaciones;break;
      case 'recuperacionDePrestamosPorLiquidaciones': return _datos.recuperacionDePrestamosPorLiquidaciones;break;
      case 'recuperacionDeRetirosPorLiquidaciones': return _datos.recuperacionDeRetirosPorLiquidaciones;break;
      case 'aportacionExtraordinaria': return _datos.aportacionExtraordinaria;break;
      case 'intAportacionExtraordinaria': return _datos.intAportacionExtraordinaria;break;
      case 'intRecPorDifLiquidacion': return _datos.intRecPorDifLiquidacion;break;
      case 'saldoInteresesTP': return _datos.saldoInteresesTp;break;
      case 'comisionDepositosExtr': return _datos.comisionDepositosExtr;break;
      case 'comisionSeguro': return _datos.comisionSeguro;break;
      case 'comisionAdministracion': return _datos.comisionAdministracion;break;
      case 'comisionLiquidacion': return _datos.comisionLiquidacion;break;
      case 'premioAlAhorro': return _datos.premioAlAhorro;break;
      case 'saldoTotalRecibido': return _datos.saldoTotalRecibido;break;
      case 'saldoEgresos': return _datos.saldoEgresos;break;
      case 'comisionRetiro': return _datos.comisionRetiro;break;
      case 'recuperacionDeComisionPorAdministracion': return _datos.recuperacionDeComisionPorAdministracion;break;
      case 'recuperacionDeComisionDeRetiro': return _datos.recuperacionDeComisionDeRetiro;break;
      case 'intPremioAlAhorro': return _datos.intPremioAlAhorro;break;
      case 'porcentajeInt': return _datos.porcentajeInt;break;
      case 'porcentajeIntRecXPres': return _datos.porcentajeIntRecXPres;break;
      case 'porcentajeTotal': return _datos.porcentajeTotal;break;
      case 'region': return _datos.region;break;
      case 'sucursal': return _datos.sucursal;break;
      case 'nomina': return _datos.nomina;break;
      case 'contrato': return _datos.contrato;break;
      case 'tipoParticipante': return _datos.tipoParticipante;break;
      case 'puesto': return _datos.puesto;break;
      case 'clabe': return _datos.clabe;break;
      case 'banco': return _datos.banco;break;
      case 'idParticipante': return _datos.idParticipante;break;
      case 'retiroIntEmpresa': return _datos.retiroIntEmpresa;break;
      case 'retiroIntEmpleado': return _datos.retiroIntEmpleado;break;
      case 'retiroIntEmpleadoVol': return _datos.retiroIntEmpleadoVol;break;
      case 'retiroIntPagoExcedido': return _datos.retiroIntPagoExcedido;break;
      case 'retiroIntRecXPres': return _datos.retiroIntRecXPres;break;
      case 'retiroIntRecXLiq': return _datos.retiroIntRecXLiq;break;
      case 'retiroPremioAlAhorro': return _datos.retiroPremioAlAhorro;break;
      case 'retiroIntExtraordinaria': return _datos.retiroIntExtraordinaria;break;
      case 'retiroIntPremioAlAhorro': return _datos.retiroIntPremioAlAhorro;break;
      case 'prestamoEmpresa': return _datos.prestamoEmpresa;break;
      case 'prestamoEmpleado': return _datos.prestamoEmpleado;break;
      case 'prestamoVoluntaria': return _datos.prestamoVoluntaria;break;
      case 'prestamoExtraordinaria': return _datos.prestamoExtraordinaria;break;
      case 'intPrestamoEmpresa': return _datos.intPrestamoEmpresa;break;
      case 'intPrestamoEmpleado': return _datos.intPrestamoEmpleado;break;
      case 'intPrestamoVoluntaria': return _datos.intPrestamoVoluntaria;break;
      case 'intPrestamoExtraordinaria': return _datos.intPrestamoExtraordinaria;break;
      case 'intRecPrestamoEmpresa': return _datos.intRecPrestamoEmpresa;break;
      case 'intRecPrestamoEmpleado': return _datos.intRecPrestamoEmpleado;break;
      case 'intRecPrestamoVoluntaria': return _datos.intRecPrestamoVoluntaria;break;
      case 'intRecPrestamoExtraordinaria': return _datos.intRecPrestamoExtraordinaria;break;
      case 'comisionPrestamoEmpresa': return _datos.comisionPrestamoEmpresa;break;
      case 'comisionPrestamoEmpleado': return _datos.comisionPrestamoEmpleado;break;
      case 'comisionPrestamoVoluntaria': return _datos.comisionPrestamoVoluntaria;break;
      case 'comisionPrestamoExtraordinaria': return _datos.comisionPrestamoExtraordinaria;break;
      case 'comisionRetiroEmpresa': return _datos.comisionRetiroEmpresa;break;
      case 'comisionRetiroEmpleado': return _datos.comisionRetiroEmpleado;break;
      case 'comisionRetiroVoluntaria': return _datos.comisionRetiroVoluntaria;break;
      case 'comisionRetiroExtraordinaria': return _datos.comisionRetiroExtraordinaria;break;
      case 'prepagoCapitalEmpresa': return _datos.prepagoCapitalEmpresa;break;
      case 'prepagoInteresEmpresa': return _datos.prepagoInteresEmpresa;break;
      case 'prepagoCapitalEmpleado': return _datos.prepagoCapitalEmpleado;break;
      case 'prepagoInteresEmpleado': return _datos.prepagoInteresEmpleado;break;
      case 'prepagoCapitalVoluntaria': return _datos.prepagoCapitalVoluntaria;break;
      case 'prepagoInteresVoluntaria': return _datos.prepagoInteresVoluntaria;break;
      case 'prepagoCapitalExtraordinaria': return _datos.prepagoCapitalExtraordinaria;break;
      case 'prepagoInteresExtraordinaria': return _datos.prepagoInteresExtraordinaria;break;
      case 'interesGanadoAño': return _datos.interesGanadoAnio;break;
      default: return 'vacio'; break;
    }
  }
}