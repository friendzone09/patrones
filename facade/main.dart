import 'cine_facade.dart';
import 'proyector.dart';
import 'reproductor.dart';
import 'sistema_audio.dart';

void main(){
  final cine = CineFacade(Proyector(), SistemaAudio(), Reproductor());

  cine.verPelicula('narcos gay', 200);
  cine.terminarFuncion();

  // La fachada coordina los pasos.
  // El usuario de la fachada solo conoce los metodos basicos
  // El usuario no necesita conocer los detalles
  // El procedimiento se concentra en una clase
}