import 'package:flutter/material.dart';

class BarraNavegacion extends StatefulWidget {
  const BarraNavegacion({
    Key key,
  }) : super(key: key);

  @override
  _BarraNavegacionState createState() => _BarraNavegacionState();
}

class _BarraNavegacionState extends State<BarraNavegacion> {

  int _indiceSeleccionado;
  TextStyle tipoEstilo;      

  @override
  void initState() {
    _indiceSeleccionado = 0;
    tipoEstilo = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    super.initState();
  }

  void _cambiarIndice(int i) => setState(() => _indiceSeleccionado = i);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(IconData(59491, fontFamily: 'MaterialIcons')),
          title: Text('Plato aleatorio'),
        ),
        BottomNavigationBarItem(
          icon: Icon(IconData(57899, fontFamily: 'MaterialIcons')),
          title: Text('Lista de comidas'),
        ),
      ],
      
      currentIndex: _indiceSeleccionado,

      selectedItemColor: Colors.amber[800],

      onTap: _cambiarIndice,
    );
  }
}
