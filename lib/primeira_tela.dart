import 'package:flutter/material.dart';
import 'segunda_tela.dart';

enum Menu { itemUm }

class Primeira extends StatefulWidget {
  String opcao = "Mostrará Opção Selecionada na Segunda Tela";

  State<Primeira> createState() => _EstadoPrimeira();
}

class _EstadoPrimeira extends State<Primeira> {
  Future<void> novaJanela(BuildContext context, String origem) async {
    
      final resultado = await Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Segunda(origem, 'Segunda Tela')));
      setState(() {
          widget.opcao=resultado;  
      });
      
    
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('Primeira Tela'), actions: <Widget>[
        PopupMenuButton<Menu>(
            onSelected: (Menu item) {
              novaJanela(context, 'PopupMenu');
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
                  const PopupMenuItem<Menu>(
                    value: Menu.itemUm,
                    child: Text('Segunda Tela'),
                  ),
                ])
      ]),
      body: Center(
          child: Column(children: <Widget>[
        Text("${widget.opcao}"),
        ElevatedButton(
          child: Text('Abrir 2a. Tela'),
          onPressed: () {
            novaJanela(context, 'ElevatedButton');
          },
        ),
      ])),
    );
  }
}
