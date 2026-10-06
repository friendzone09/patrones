import 'generador-excel.dart';
import 'generador-reportes.dart';
import 'generador-texto.dart';
import 'genrador-json.dart';

void main(){
  final generadores = <GeneradorReportes>[
    GeneradorTexto(),
    GeneradorJson(),
    GeneradorExcel(),
  ];

  for (final generador in generadores){
    generador.generarReporte([10,10,10,10,10,10,10,10], );
  }
} 