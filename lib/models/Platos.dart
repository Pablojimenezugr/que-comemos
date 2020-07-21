import 'dart:math';

import 'comida.dart';

class Platos {
  List<Comida> _comidas = [
    Comida("Macarrones", "con tomate", false),
    Comida("Cocido", "", false),
    Comida("Costilla", "", true),
    Comida("Lentejas", "", true),
  ];

  static final Platos _singleton = new Platos._internal();

  factory Platos() {
    return _singleton;
  }

  Platos._internal();

  int size() => _comidas.length;

  Comida obtener(int i) => _comidas[i];

  void aniadirComida(Comida c) {
    _comidas.add(c);
  }

  Comida getRandomComida() {
    var rdn = Random();
    return _comidas[rdn.nextInt(_comidas.length)];
  }
}
