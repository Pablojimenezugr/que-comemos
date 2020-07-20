import 'package:flutter/material.dart';
import 'package:que_comemos/Pages/static/BarraNavegacion.dart';

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
              print('hacer algo');
            },
            child: Container(
              width: 300,
              height: 100,
              child: Center(
                  child: Text(
                'pulsa para obtener un plato aleatorio',
                textAlign: TextAlign.center,
              )),
            ),
          ),
        ),
      ),
    );
  }
}
