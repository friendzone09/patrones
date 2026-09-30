import 'triangulo.dart';

void main(){
  // No se puede instanciar una clase abstracta o interfaz
  // FiguraGeometrica unaFigura = FiguraGeometrica();

  Triangulo unTriangulo = Triangulo(15, 8);

  unTriangulo.obtenerArea();
  print("Area de triangulo: ${unTriangulo.area}");
}