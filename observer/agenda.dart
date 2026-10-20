// Sujeto observado
import 'observador.dart';

class Agenda {

  final List<Observador> _observadores = [];

  void suscribir(Observador observador){
    _observadores.add(observador);
  }

  void desuscribir(Observador observador){
    _observadores.remove(observador);
  }

  void publicadorTarea(String tarea){
    print("Publicando tarea: $tarea");

    for (final observador in _observadores){
      observador.actualizar(tarea);
    }
  }

  // Con observer la agenda solo conoce el contrato observador
  // La agenda ya no se encarga de todo
  // Las clases destinatarias se suscriben o se desuscriben de la agenda
}