import 'package:flutter/material.dart';
import 'package:que_comemos/Pages/static/BarraNavegacion.dart';
import 'package:que_comemos/models/Platos.dart';

class Secundaria extends StatefulWidget {
  @override
  _SecundariaState createState() => _SecundariaState();
}

class _SecundariaState extends State<Secundaria> {
  Platos datos;

  @override
  void initState() {
    datos = Platos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Platos existentes en el sistema'),
        ),
        bottomNavigationBar: BarraNavegacion(),
        body: Center(
          child: ListView.builder(
            itemCount: datos.size(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  //setState(() => _todos[index].toggleDone());
                },
                child: ListTile(
                  leading: Checkbox(
                    value: false,
                    onChanged: null,
                  ),
                  title: Text(
                    datos.obtener(index).nombre,
                    style: TextStyle(),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
