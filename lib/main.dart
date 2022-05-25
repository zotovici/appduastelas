import 'package:flutter/material.dart';
import 'primeira_tela.dart';
import 'segunda_tela.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/primeira_tela",
    routes: {
      "/primeira_tela": (context) => Primeira(),
      "/segunda_tela": (context) => Segunda('','Segunda Tela'),
    },
  ));
}
