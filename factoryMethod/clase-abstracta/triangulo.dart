// Clase que implementa a la interfaz o clase abstracta

// Solo para triangulos equilateros
import 'figuraGeometrica.dart';

class Triangulo implements FiguraGeometrica{
  double? perimetro;
  double? area;
  double baseTraingulo;
  double altura;

  Triangulo(this.baseTraingulo, this.altura);

  void obtenerPerimetro(){
    perimetro = baseTraingulo * 3;
  }

  void obtenerArea(){
    area = baseTraingulo * altura / 2;
  }
}