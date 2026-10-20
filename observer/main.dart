import 'agenda.dart';
import 'notificador.dart';
import 'panel-alumno.dart';

void main(){
  final agenda = Agenda();
  final PanelAlumno panel = PanelAlumno();
  final notificador = Notificador();

  agenda.suscribir(panel);
  agenda.suscribir(notificador);

  agenda.publicadorTarea('Estudiar patrones');

  agenda.desuscribir(notificador);
  
  agenda.publicadorTarea('Plantear ejercisio de Facade');
}