import 'observador.dart';

// Observador

class Notificador implements Observador {
  @override
  void actualizar(String tarea) {
    print('Notificacion: se publico $tarea');
  }
}