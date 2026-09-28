// Constructor con singletone
class Configuracion{
  // Contructor privado para la clase Configuracion
  // No recibe parametros, y no puede ser llamado desde fuera de la clase
  Configuracion._();

  // Instancia unica de la clase
  static final Configuracion _instancia = Configuracion._();

  // El metodo factory regresa la instancia unica
  // Un constructor de no tiene que crear una nueva instancia
  factory Configuracion() => _instancia;

  String idioma = 'es';

  // Contructor ordinario
  // No se necesita para patron singleton
  // Configuracion(this.idioma);
}