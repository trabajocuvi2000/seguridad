import 'package:flutter/material.dart';
import 'package:hola/src/Emergencias.dart';
import 'package:hola/src/GestionVecinos.dart';
import 'package:hola/src/TipoEmergencia.dart';
import 'package:hola/src/UsuarioVecinoRegistrar.dart';
import 'package:hola/src/app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sistema de Seguridad Comunal',
      // home: TipoEmergencia(),
      // home: Emergencias(),
      // home: GestionVecinos(),
      home: UsuarioVecinoRegistrar(),
      // initialRoute: '/',
      // routes: {
      //   "/": (context) => MyAppForm(),
      //   "emergencias": (context) => Emergencias(),
      //   "tipoEmergencia": (context) => TipoEmergencia(),
      //   "gestionVecinos": (context) => GestionVecinos(),
      // },
    );
  }
}