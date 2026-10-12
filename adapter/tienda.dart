import 'servicio-pago.dart';
import 'terminal-externa.dart';

class Tienda {
  final ServicioPago servicioPago;
  final TerminalExterna terminalExterna;

  Tienda(this.servicioPago, this.terminalExterna);

  void finalizaCompra(double total, String medio){
    if (medio == 'servicio'){
      servicioPago.pagar(total);
    } else if (medio == 'terminalExterna'){
      // La tienda debe convertir pesos a dolares antes de llamar al servicio
      final totalDolares = total / 18.25;
      terminalExterna.cobrar(totalDolares);
    } else{
      throw ArgumentError("El medio de pago no es soportado");
    }
  }
}