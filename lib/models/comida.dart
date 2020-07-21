class Comida {
  String _nombre; // hace de id
  String _descripcion;
  bool _especial;

  Comida(this._nombre, this._descripcion, this._especial);

  String get nombre => _nombre;

  String get descripcion => _descripcion;

  bool get especial => _especial;
}
