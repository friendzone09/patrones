import 'servicio-pago.dart';
import 'terminal-adaptador.dart';
import 'terminal-externa.dart';
import 'tienda.dart';

void main(){
  final tiendaConServicio = Tienda(ServicioPago());
  final tiendaConTerminal = Tienda(TerminalAdaptador(TerminalExterna()));

  tiendaConServicio.finalizaCompra(158.50); // Pesos
  tiendaConTerminal.finalizaCompra(250.50); // Dolabres
}