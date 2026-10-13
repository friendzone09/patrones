import 'servicio-pago.dart';
import 'terminal-externa.dart';
import 'medio-pago.dart';

class Tienda {
  final MedioPago medioPago;
  Tienda(this.medioPago);

  void finalizaCompra(double total){
    medioPago.pagar(total);
  }
}