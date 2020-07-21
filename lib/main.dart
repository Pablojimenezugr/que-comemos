import 'package:flutter/material.dart';
import 'package:que_comemos/pruebas.dart';
import 'Pages/Principal.dart';
import 'Pages/Secundaria.dart';

import 'pruebas.dart';

void main() => runApp(Pruebas());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => Principal(),
        '/list': (context) => Secundaria(),
      },
      initialRoute: '/',
    );
  }
}
