import 'package:myapp/models/corte_operaciones.dart';
import 'package:myapp/models/edo_cuenta_individual.dart';

class Sesion {

  Sesion._privateConstructor();

  static final Sesion miSesion = Sesion._privateConstructor();

  List<EdoCuentaIndividual> edosCuenta;
  List<CorteOperaciones> corteOperaciones;
}