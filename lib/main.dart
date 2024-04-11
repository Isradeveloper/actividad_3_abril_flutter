import 'package:actividad_3_abril/views/DisenoDos.dart';
import 'package:actividad_3_abril/views/DisenoUno.dart';
import 'package:actividad_3_abril/views/Principal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '', routes: {
      '': ((context) => const Principal()),
      'diseno1': ((context) => const DisenoUno()),
      'diseno2': ((context) => const DisenoDos()),
    });
  }
}
