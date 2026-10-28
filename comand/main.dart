import 'controlador_comandos.dart';
import 'eliminar_tarea.dart';

void main() {

  final tareas = [
    'Estudiar Dart',
    'Hacer mis HUS',
    'Preguntar a chat cómo hacer un merge',
    'Decirle a chat qué me pongo hoy',
    'Hacer UI de la app móvil',
  ];

  final controlador = ControladorComandos();

  print('Las tareas pendientes son: ${tareas}');

  controlador.ejecutar(EliminarTarea(tareas, 1));

  print('Lista de tareas despues de eliminar: ${tareas}');

  controlador.ejecutar(EliminarTarea(tareas, 0));

  print('Lista de tareas despues de eliminar: ${tareas}');

  // Deshacer la eliminación
  controlador.deshacer();
  print('Lista de tareas despues del primer deshacer: ${tareas}');

  controlador.deshacer();
  print('Lista de tareas despues del segundo deshacer: ${tareas}');

  // Cada comando reserva su propia eliminacion
  // Cada comando conoce como ejecutar y revertir la accion
  // Ahora se pueden agregar mas comandos a la agenda
}