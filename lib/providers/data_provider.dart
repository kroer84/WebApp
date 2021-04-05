import 'dart:async';
import 'dart:convert';
import 'dart:io'; // Para los HttpHeaders
import 'package:http/http.dart';
import 'package:myapp/models/corte_operaciones.dart';
import 'package:myapp/models/edo_cuenta_individual.dart';

class DataProvider {

  Future<Map> getDatos(String usuario, String password) async {
    List<String> parametros = [
      'token',
      'nombre',
      'numero_empleado',
      'permisos',
      'respuesta'
    ];
    var queryParameters = {
      'u': '$usuario',
      'p': '$password',
    };
    final _url = '127.0.0.1:5000';
    var uri = Uri.https(_url, '/registro', queryParameters);
    Response resp = await get(uri, headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
    });
    int statusCode = resp.statusCode;
    print('status Code ...$statusCode');
    print('resp.body ...${resp.body}');
    return obtenMapaResultados(resp.body, parametros);
  }

  Map<String, String> headers = {
    'Content-Type': 'application/json;charset=UTF-8',
    'Charset': 'UTF-8'
  };

  Future<List<EdoCuentaIndividual>> getResumenEstadoDeCuenta() async {
    // var queryParameters = {
    //   'token': '$token',
    //   'plan': '$plan',
    // };
    // final _url = 'control.develop.com.mx:8080';
    // http://control.develop.com.mx:8080/apoyacmx/v1/reportes/resumenGralPorEmpleado/12/3/token
    // final _url = 'localhost:8080';
    // var uri = Uri.http(_url, '/apoyacmx/v1/reportes/resumenGralPorEmpleado/12/3/token');
    // var uri = Uri.http(_url, 'apoyacmx/v1/usuario/login/PLUR15/12117812');
    // var uri = Uri.http(_url, 'Administrador_de_Trabajo/s2.json');
    // print('uri ...$uri');
    // Response resp = await get("http://control.develop.com.mx:8080/apoyacmx/v1/usuario/login/PLUR15/12117812");
    // Response resp = await get(uri);
    // Response resp = await get(uri, headers: headers);

    // int statusCode = resp.statusCode;
    // print('status Code ...$statusCode');
    // print('resp.body ...${resp.body}');
    // return obtenMapaResultadosComplejo(resp.body);
    return edoCuentaIndividualFromJson(respuesta);
    // return null;
  }

  Future<List<CorteOperaciones>> getCorteOperaciones() async {
    // var queryParameters = {
    //   'token': '$token',
    //   'plan': '$plan',
    // };
    // final _url = 'control.develop.com.mx:8080';
    // http://control.develop.com.mx:8080/apoyacmx/v1/reportes/resumenGralPorEmpleado/12/3/token
    // final _url = 'localhost:8080';
    // var uri = Uri.http(_url, '/apoyacmx/v1/reportes/resumenGralPorEmpleado/12/3/token');
    // var uri = Uri.http(_url, 'apoyacmx/v1/usuario/login/PLUR15/12117812');
    // var uri = Uri.http(_url, 'Administrador_de_Trabajo/s2.json');
    // print('uri ...$uri');
    // Response resp = await get("http://control.develop.com.mx:8080/apoyacmx/v1/usuario/login/PLUR15/12117812");
    // Response resp = await get(uri);
    // Response resp = await get(uri, headers: headers);

    // int statusCode = resp.statusCode;
    // print('status Code ...$statusCode');
    // print('resp.body ...${resp.body}');
    // return obtenMapaResultadosComplejo(resp.body);
    return corteOperacionesFromJson(respuestaCorteOperaciones);
    // return null;
  }

  Map obtenMapaResultadosComplejo(String resultado) {
    final decodedData = json.decode(resultado);
    return decodedData;
  }

  Map obtenMapaResultados(String resultado, List parametros) {
    final decodedData = json.decode(resultado);
    Map details = new Map();
    parametros.forEach((element) {
      details[element] = decodedData[element];
    });
    return details;
  }

  String respuesta = '[{"nombre":"Cesar Rodriguez Gonzalez","identificador":0,"idCuenta":0,"estatus":1,"fechaLiqidacion":0,"identificadorReporte":"ROUG830413953","apoEmpresa":0.0,"apoEmpleado":2100.0,"apoVoluntaria":9800.0,"intApoEmpresa":0.0,"intApoEmpleado":0.0,"intApoVoluntaria":0.0,"prestamo":1495.0,"intPrestamo":150.0,"comision":5.0,"retiroEmpresa":0.0,"retiroParticipante":0.0,"retiroParticipanteVol":0.0,"retiroPagoExcedido":0.0,"retiroExtraordinarias":0.0,"movTransito":0.0,"intMovTransito":0.0,"liquidacion":-1.0,"prepagoCapital":0.0,"prepagoIntereses":0.0,"pagoExcedido":300.0,"intPagoExcedido":0.0,"saldoAportaciones":11900.0,"saldoPrestamos":1650.0,"saldoIntereses":0.0,"saldoTotalDelFondo":12200.0,"saldoALiquidar":7010.0,"saldoPrepago":0.0,"saldoRetiro":0.0,"intRecibidosPorPrestamo":0.0,"ahorroDeLiquidaciones":0.0,"recuperacionDePrestamosPorLiquidaciones":0.0,"recuperacionDeRetirosPorLiquidaciones":0.0,"aportacionExtraordinaria":0.0,"intAportacionExtraordinaria":0.0,"intRecPorDifLiquidacion":0.0,"saldoInteresesTP":0.0,"comisionDepositosExtr":0.0,"comisionSeguro":0.0,"comisionAdministracion":3540.0,"comisionLiquidacion":0.0,"premioAlAhorro":0.0,"saldoTotalRecibido":300.0,"saldoEgresos":5190.0,"comisionRetiro":0.0,"recuperacionDeComisionPorAdministracion":0.0,"recuperacionDeComisionDeRetiro":0.0,"intPremioAlAhorro":0.0,"porcentajeInt":4.69565217391,"porcentajeIntRecXPres":0.0,"porcentajeTotal":0.0,"region":"-","sucursal":"-","nomina":"-","contrato":"-","tipoParticipante":"-","puesto":"-","clabe":"0","banco":"0","idParticipante":"0","retiroIntEmpresa":0.0,"retiroIntEmpleado":0.0,"retiroIntEmpleadoVol":0.0,"retiroIntPagoExcedido":0.0,"retiroIntRecXPres":0.0,"retiroIntRecXLiq":0.0,"retiroPremioAlAhorro":0.0,"retiroIntExtraordinaria":0.0,"retiroIntPremioAlAhorro":0.0,"prestamoEmpresa":0.0,"prestamoEmpleado":0.0,"prestamoVoluntaria":0.0,"prestamoExtraordinaria":0.0,"intPrestamoEmpresa":0.0,"intPrestamoEmpleado":0.0,"intPrestamoVoluntaria":0.0,"intPrestamoExtraordinaria":0.0,"intRecPrestamoEmpresa":0.0,"intRecPrestamoEmpleado":0.0,"intRecPrestamoVoluntaria":0.0,"intRecPrestamoExtraordinaria":0.0,"comisionPrestamoEmpresa":0.0,"comisionPrestamoEmpleado":0.0,"comisionPrestamoVoluntaria":0.0,"comisionPrestamoExtraordinaria":0.0,"comisionRetiroEmpresa":0.0,"comisionRetiroEmpleado":0.0,"comisionRetiroVoluntaria":0.0,"comisionRetiroExtraordinaria":0.0,"prepagoCapitalEmpresa":0.0,"prepagoInteresEmpresa":0.0,"prepagoCapitalEmpleado":0.0,"prepagoInteresEmpleado":0.0,"prepagoCapitalVoluntaria":0.0,"prepagoInteresVoluntaria":0.0,"prepagoCapitalExtraordinaria":0.0,"prepagoInteresExtraordinaria":0.0,"interesGanadoAño":0.0},{"nombre":"Gabriel Angeles Bonfil","identificador":0,"idCuenta":0,"estatus":1,"fechaLiqidacion":0,"identificadorReporte":"LUDA780217QV5","apoEmpresa":0.0,"apoEmpleado":2100.0,"apoVoluntaria":11900.0,"intApoEmpresa":0.0,"intApoEmpleado":0.0,"intApoVoluntaria":0.0,"prestamo":1995.0,"intPrestamo":200.0,"comision":5.0,"retiroEmpresa":0.0,"retiroParticipante":0.0,"retiroParticipanteVol":0.0,"retiroPagoExcedido":0.0,"retiroExtraordinarias":0.0,"movTransito":0.0,"intMovTransito":0.0,"liquidacion":-1.0,"prepagoCapital":0.0,"prepagoIntereses":0.0,"pagoExcedido":0.0,"intPagoExcedido":0.0,"saldoAportaciones":14000.0,"saldoPrestamos":2200.0,"saldoIntereses":0.0,"saldoTotalDelFondo":14000.0,"saldoALiquidar":8260.0,"saldoPrepago":0.0,"saldoRetiro":0.0,"intRecibidosPorPrestamo":0.0,"ahorroDeLiquidaciones":0.0,"recuperacionDePrestamosPorLiquidaciones":0.0,"recuperacionDeRetirosPorLiquidaciones":0.0,"aportacionExtraordinaria":0.0,"intAportacionExtraordinaria":0.0,"intRecPorDifLiquidacion":0.0,"saldoInteresesTP":0.0,"comisionDepositosExtr":0.0,"comisionSeguro":0.0,"comisionAdministracion":3540.0,"comisionLiquidacion":0.0,"premioAlAhorro":0.0,"saldoTotalRecibido":0.0,"saldoEgresos":5740.0,"comisionRetiro":0.0,"recuperacionDeComisionPorAdministracion":0.0,"recuperacionDeComisionDeRetiro":0.0,"intPremioAlAhorro":0.0,"porcentajeInt":-6.18052276922,"porcentajeIntRecXPres":0.0,"porcentajeTotal":0.0,"region":"-","sucursal":"-","nomina":"-","contrato":"-","tipoParticipante":"-","puesto":"-","clabe":"0","banco":"0","idParticipante":"0","retiroIntEmpresa":0.0,"retiroIntEmpleado":0.0,"retiroIntEmpleadoVol":0.0,"retiroIntPagoExcedido":0.0,"retiroIntRecXPres":0.0,"retiroIntRecXLiq":0.0,"retiroPremioAlAhorro":0.0,"retiroIntExtraordinaria":0.0,"retiroIntPremioAlAhorro":0.0,"prestamoEmpresa":0.0,"prestamoEmpleado":0.0,"prestamoVoluntaria":0.0,"prestamoExtraordinaria":0.0,"intPrestamoEmpresa":0.0,"intPrestamoEmpleado":0.0,"intPrestamoVoluntaria":0.0,"intPrestamoExtraordinaria":0.0,"intRecPrestamoEmpresa":0.0,"intRecPrestamoEmpleado":0.0,"intRecPrestamoVoluntaria":0.0,"intRecPrestamoExtraordinaria":0.0,"comisionPrestamoEmpresa":0.0,"comisionPrestamoEmpleado":0.0,"comisionPrestamoVoluntaria":0.0,"comisionPrestamoExtraordinaria":0.0,"comisionRetiroEmpresa":0.0,"comisionRetiroEmpleado":0.0,"comisionRetiroVoluntaria":0.0,"comisionRetiroExtraordinaria":0.0,"prepagoCapitalEmpresa":0.0,"prepagoInteresEmpresa":0.0,"prepagoCapitalEmpleado":0.0,"prepagoInteresEmpleado":0.0,"prepagoCapitalVoluntaria":0.0,"prepagoInteresVoluntaria":0.0,"prepagoCapitalExtraordinaria":0.0,"prepagoInteresExtraordinaria":0.0,"interesGanadoAño":0.0}]';
  String respuestaCorteOperaciones = '[{"banco":"BANCA AFIRME, S.A.","caja":"ApoyaCMXP3","clabe_bancaria":"000000000000000000","clave_participante":"5","codigo":"Codigo","concepto_pago":"Préstamo Codigo 5","descripcion":"Préstamo","estatus":"NO OPERADA","fecha_mili":1575912701615,"fecha_solicitud":"09/12/2019 11:31:41","importe":603.0,"nombre_participante":"ARTURO GERARDO MANCHA GONZALEZ","rfc":"MAGA991002T14"},{"banco":"BANCA AFIRME, S.A.","caja":"ApoyaCMXP3","clabe_bancaria":"000000000000000000","clave_participante":"11","codigo":"Codigo","concepto_pago":"Préstamo Codigo 11","descripcion":"Préstamo","estatus":"NO OPERADA","fecha_mili":1575912701615,"fecha_solicitud":"09/12/2019 11:31:41","importe":1009.0,"nombre_participante":"JESSENIA AYALA BRIONES","rfc":"AABJ9711237Q6"},{"banco":"BANCA AFIRME, S.A.","caja":"ApoyaCMXP3","clabe_bancaria":"123456789012345678","clave_participante":"1","codigo":"Codigo","concepto_pago":"Préstamo Codigo 1","descripcion":"Préstamo","estatus":"NO OPERADA","fecha_mili":1575912701615,"fecha_solicitud":"09/12/2019 11:31:41","importe":10.0,"nombre_participante":"ANA GABRIELA HUERTA TIZAPA","rfc":"HUTA970809670"},{"banco":"BANCA AFIRME, S.A.","caja":"ApoyaCMXP3","clabe_bancaria":"000000000000000000","clave_participante":"2","codigo":"Codigo","concepto_pago":"Préstamo Codigo 2","descripcion":"Préstamo","estatus":"NO OPERADA","fecha_mili":1575912701615,"fecha_solicitud":"09/12/2019 11:31:41","importe":500.0,"nombre_participante":"ANAHI ROSADO RAMIREZ","rfc":"RORA940619K25"},{"banco":"BANCA AFIRME, S.A.","caja":"ApoyaCMXP3","clabe_bancaria":"000000000000000000","clave_participante":"3","codigo":"Codigo","concepto_pago":"Préstamo Codigo 3","descripcion":"Préstamo","estatus":"NO OPERADA","fecha_mili":1575912701615,"fecha_solicitud":"09/12/2019 11:31:41","importe":551.0,"nombre_participante":"ANAI REBECA HERNANDEZ BAUTISTA","rfc":"HEBA920910926"},{"banco":"BANCA AFIRME, S.A.","caja":"ApoyaCMXP3","clabe_bancaria":"000000000000000000","clave_participante":"4","codigo":"Codigo","concepto_pago":"Préstamo Codigo 4","descripcion":"Préstamo","estatus":"NO OPERADA","fecha_mili":1575912701615,"fecha_solicitud":"09/12/2019 11:31:41","importe":602.0,"nombre_participante":"ANGEL URIEL RIVERA GONZALEZ","rfc":"RIGA9306269Z3"},{"banco":"BANCA AFIRME, S.A.","caja":"ApoyaCMXP3","clabe_bancaria":"000000000000000000","clave_participante":"12","codigo":"Codigo","concepto_pago":"Préstamo Codigo 12","descripcion":"Préstamo","estatus":"NO OPERADA","fecha_mili":1575912701615,"fecha_solicitud":"09/12/2019 11:31:41","importe":560.0,"nombre_participante":"DEL ANGEL BENITES JOSE ANTONIO ","rfc":"AEBA900118HN8"},{"banco":"BANCA AFIRME, S.A.","caja":"ApoyaCMXP3","clabe_bancaria":"000000000000000000","clave_participante":"6","codigo":"Codigo","concepto_pago":"Préstamo Codigo 6","descripcion":"Préstamo","estatus":"NO OPERADA","fecha_mili":1575912701615,"fecha_solicitud":"09/12/2019 11:31:41","importe":704.0,"nombre_participante":"SOTO RIZOS BERNARDO ","rfc":"SORB7108202SA"},{"banco":"BANCA AFIRME, S.A.","caja":"ApoyaCMXP3","clabe_bancaria":"000000000000000000","clave_participante":"7","codigo":"Codigo","concepto_pago":"Préstamo Codigo 7","descripcion":"Préstamo","estatus":"NO OPERADA","fecha_mili":1575912701615,"fecha_solicitud":"09/12/2019 11:31:41","importe":1155.0,"nombre_participante":"DANIEL SIBAJA CAAMAÑO","rfc":"SICD830123MLO"},{"banco":"BANCA AFIRME, S.A.","caja":"ApoyaCMXP3","clabe_bancaria":"000000000000000000","clave_participante":"8","codigo":"Codigo","concepto_pago":"Préstamo Codigo 8","descripcion":"Préstamo","estatus":"NO OPERADA","fecha_mili":1575912701615,"fecha_solicitud":"09/12/2019 11:31:41","importe":656.0,"nombre_participante":"DIDIER ALVARADO ALVAREZ","rfc":"AAAD951211LH1"},{"banco":"BANCA AFIRME, S.A.","caja":"ApoyaCMXP3","clabe_bancaria":"000000000000000000","clave_participante":"9","codigo":"Codigo","concepto_pago":"Préstamo Codigo 9","descripcion":"Préstamo","estatus":"NO OPERADA","fecha_mili":1575912701615,"fecha_solicitud":"09/12/2019 11:31:41","importe":557.0,"nombre_participante":"ENRIQUE VIZARRAGA LOPEZ","rfc":"VILE960509TT5"},{"banco":"BANCA AFIRME, S.A.","caja":"ApoyaCMXP3","clabe_bancaria":"000000000000000000","clave_participante":"5","codigo":"Codigo","concepto_pago":"Préstamo Codigo 5","descripcion":"Préstamo","estatus":"","fecha_mili":1575583847086,"fecha_solicitud":"05/12/2019 16:10:47","importe":5.0,"nombre_participante":"ARTURO GERARDO MANCHA GONZALEZ","rfc":"MAGA991002T14"},{"banco":"BANCA AFIRME, S.A.","caja":"ApoyaCMXP3","clabe_bancaria":"123456789012345678","clave_participante":"1","codigo":"Codigo","concepto_pago":"Préstamo Codigo 1","descripcion":"Préstamo","estatus":"NO OPERADA","fecha_mili":1575583015289,"fecha_solicitud":"05/12/2019 15:56:55","importe":100.0,"nombre_participante":"ANA GABRIELA HUERTA TIZAPA","rfc":"HUTA970809670"}]';
}