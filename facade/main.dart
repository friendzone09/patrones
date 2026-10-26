import 'proyector.dart';
import 'reproductor.dart';
import 'sistema_audio.dart';

void main(){
  final proyector = Proyector();
  final audio = SistemaAudio();
  final reproductor = Reproductor();
  // Todas las tareas tienen en comun lograr un objetivo
  // Sin facade se llaman a clases diferentes y funciones diferentes

  // Reproducir pelicula
  proyector.endender();
  audio.endender();
  audio.ajustarVolumen(25);
  reproductor.reproducir('Cuties');

  //Terminar la funcion
  reproductor.detener();
  audio.apagar();
  proyector.apagar();
}