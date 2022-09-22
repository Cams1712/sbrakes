// ignore_for_file: prefer_final_fields, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

class PgUsuario extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PgUsuarioState();
  }
}

class _PgUsuarioState extends State<PgUsuario> {
  //Cosntrutor
  _PgUsuarioState();

  //Criando a tela do App
  @override
  Widget build(BuildContext context) {
    var tela = MaterialApp(
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
          children: <Widget>[
            const Text("Funcionário da Silva"),
            Row(
              children: const <Widget>[
                //Tirar quando colocar o num do banco
                Text("Credencial: "),
                Text("XXXXXXXXXX"),
              ],
            ),
          ],
        ),

        //Criando a navegação lateral do app
        drawer: Drawer(
          child: ListView(
            children: const [
              //Colocando as paginas que o usuario pode clicar
              ListTile(
                title: Text("Página inicial"),
                trailing: Icon(Icons.info),
              ),
              ListTile(
                title: Text("Página do usuário"),
                trailing: Icon(Icons.supervised_user_circle_outlined),
              )
            ],
          ),
        ),
      ),
    );

    return tela;
  }
}
