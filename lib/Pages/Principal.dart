import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('¿Qué comemos mañana?'),
      ),
      bottomNavigationBar: BarraNavegacion(),
      body: Center(
        child: Card(
          child: InkWell(
            splashColor: Colors.blue,
            onTap: () {
              print('Card tapped.');
            },
            child: Container(
              width: 300,
              height: 100,
              child: Text('pulsa para obtener un plato aleatorio', textAlign: TextAlign.center,),
            ),
          ),
        ),
      ),
    );
  }
}

class BarraNavegacion extends StatelessWidget {
  const BarraNavegacion({
    Key key,
  }) : super(key: key);

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
    );
  }
}
