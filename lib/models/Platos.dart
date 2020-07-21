import 'comida.dart';

class Platos {
  List<Comida> _comidas;

  Platos() {
    // Realizar conexion a la bbdd
    _comidas = [
      Comida("Macarrones", "con tomate", false),
      Comida("Cocido", "", false),
      Comida("Costilla", "", true),
      Comida("Lentejas", "", true),
    ];
  }

  int size() => _comidas.length;

  Comida obtener(int i) => _comidas[i];

  void aniadirComida(Comida c) {
    _comidas.add(c);
  }

  void getRandomComida(Comida c) {
    _comidas.add(c);
  }
}
