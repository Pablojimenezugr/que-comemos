import 'package:flutter/material.dart';
import 'package:que_comemos/models/Platos.dart';

///
/// Principal es la página principal de la aplicación
/// con su BottomNavigationBar y las clases (Widget) que
/// sostienen las pantallas de esta bar.
///

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int indiceSeleccionado = 0;

  static const TextStyle estilo =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> pantallas = <Widget>[
    Primer(),
    Segundo(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      indiceSeleccionado = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('¿Qué comemos mañana?'),
      ),
      body: Center(
        // aquí seleccionamos la pantalla intersada.
        child: pantallas.elementAt(indiceSeleccionado),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Azar'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            title: Text('Lista de comidas'),
          ),
        ],
        currentIndex: indiceSeleccionado,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class Primer extends StatefulWidget {
  const Primer({
    Key key,
  }) : super(key: key);

  @override
  _PrimerState createState() => _PrimerState();
}

class _PrimerState extends State<Primer> {
  String sms;
  Text txt_rdn;
  TextStyle estiloSeleccionado;

  @override
  void initState() {
    sms = "pulsa para obtener un plato aleatorio";
    txt_rdn = Text(this.sms, textAlign: TextAlign.center);
    estiloSeleccionado = TextStyle(
        fontSize: 40, color: Colors.teal, fontWeight: FontWeight.bold);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue,
        onTap: () {
          setState(() {
            sms = Platos().getRandomComida().nombre;
            txt_rdn = Text(
              this.sms,
              textAlign: TextAlign.center,
              style: this.estiloSeleccionado,
            );
          });
        },
        child: Container(
          width: 300,
          height: 100,
          child: Center(
            child: txt_rdn,
          ),
        ),
      ),
    );
  }
}

class Segundo extends StatefulWidget {
  const Segundo({
    Key key,
  }) : super(key: key);

  @override
  _SegundoState createState() => _SegundoState();
}

class _SegundoState extends State<Segundo> {
  Platos datos;

  @override
  void initState() {
    datos = Platos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
            subtitle: Text(
              datos.obtener(index).descripcion,
              style: TextStyle(),
            ),
          ),
        );
      },
    );
  }
}
