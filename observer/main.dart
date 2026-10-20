import 'agenda.dart';
import 'historial.dart';
import 'notificador.dart';
import 'panel-alumno.dart';

void main(){
  final agenda = Agenda();
  final PanelAlumno panel = PanelAlumno();
  final notificador = Notificador();
  final historial = Historial();

  agenda.suscribir(panel);
  agenda.suscribir(notificador);
  agenda.suscribir(historial);

  agenda.publicadorTarea('Estudiar patrones');
  agenda.desuscribir(notificador);
  
  agenda.publicadorTarea('Plantear ejercisio de Facade');
}