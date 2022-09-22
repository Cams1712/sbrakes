// ignore_for_file: prefer_final_fields, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

import 'package:sbrakes/navegacao/navegacao.dart';

class PgTrocarSenha extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PgTrocarSenhaState();
  }
}

class _PgTrocarSenhaState extends State<PgTrocarSenha> {
  //Cosntrutor
  _PgTrocarSenhaState();

  //Criando a tela do App
  @override
  Widget build(BuildContext context) {
    var tela = MaterialApp(
      /*routes: {
        "/": (context) => PgStatusFreio(),
        "/trocar-senha": (context) => PgTrocarSenha(),
      },*/
      home: Scaffold(
        //Barra do app
        appBar: AppBar(
          title: const Text(
            "Sbrake",
            style: TextStyle(
              fontSize: 50,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          backgroundColor: Colors.black,
        ),

        //Corpo do app
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [],
        ),

        //Criando a navegação lateral do app
        drawer: Drawer(
          child: ListView(
            children: [
              //Colocando as paginas que o usuario pode clicar
              Builder(
                builder: (context) => ListTile(
                  title: const Text("Página inicial"),
                  trailing: const Icon(Icons.info),
                  onTap: () {
                    debugPrint("Entrou PgInicial1");
                    var n = Navegacao();
                    n.paraPGStatusFreio(context);
                  },
                ),
              ),
              Builder(
                builder: (context) => ListTile(
                  title: const Text("Página do usuário"),
                  trailing: const Icon(Icons.supervised_user_circle_outlined),
                  onTap: () {
                    debugPrint("Entrou PgUsuario1");
                    var n = Navegacao();
                    n.paraPGTrocarSenha(context);
                  },
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
