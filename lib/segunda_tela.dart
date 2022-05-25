import 'package:flutter/material.dart';

enum opcoes { opcao1, opcao2 }

class Segunda extends StatefulWidget {
  @override
  String origem;
  final String title;

  Segunda(this.origem, this.title);

  @override
  State<Segunda> createState() => _EstadoSegunda();
}

class _EstadoSegunda extends State<Segunda> {
  opcoes selecionado = opcoes.opcao1;
  String opcao = 'Opção 1';
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(children: <Widget>[
          Text("Acessei usando: " + widget.origem),
          ListTile(
            title: const Text('Opção 1'),
            leading: Radio<opcoes>(
              value: opcoes.opcao1,
              groupValue: selecionado,
              onChanged: (opcoes? value) {
                setState(() {
                  selecionado = opcoes.opcao1;
                  opcao = 'Opção 1';
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Opção 2'),
            leading: Radio<opcoes>(
              value: opcoes.opcao2,
              groupValue: selecionado,
              onChanged: (opcoes? value) {
                setState(() {
                  selecionado = opcoes.opcao2;
                  opcao = 'Opção 2';
                });
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context,opcao);
            },
            child: Text('Voltar'),
          )
        ])));
  }
}
