// ignore_for_file: prefer_final_fields, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

import 'package:sbrakes/navegation/navegacao.dart';

main() => runApp(PgStatusFreio());

class PgStatusFreio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PgStatusFreioState();
  }
}

class _PgStatusFreioState extends State<PgStatusFreio> {
  //Cosntrutor
  _PgStatusFreioState();

  //Criando a tela do App
  @override
  Widget build(BuildContext context) {
    var tela = MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () {
                    var n = Navegacao();
                    n.paraPGLogin(context);
                  },
                  child: const Text("Entrar"),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return tela;
  }
}
