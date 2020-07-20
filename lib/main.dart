import 'package:flutter/material.dart';
import 'Pages/Principal.dart';
import 'Pages/Secundaria.dart';

void main() => runApp(MyApp());

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
        '/': (context) => Secundaria(),
      },
      initialRoute: '/',
    );
  }
}
