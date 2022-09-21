// ignore_for_file: prefer_final_fields, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:sbrakes/widgetsPersonalisados/estadoFreio.dart';

class PgTrocarSenha extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PgTrocarSenhaState();
  }
}

class _PgTrocarSenhaState extends State<PgTrocarSenha> {
  var _index = 0;
  var _indexContrario = 1;
  var estado = ["Ativado", "Desativado"];
  var _estadoContrario = ["ativar", "desativar"];

  void _mudancaEstado() {
    setState(() {
      debugPrint("$_index");
      _index == 1 ? _indexContrario++ : _indexContrario--;
      _index == 1 ? _index-- : _index++;
    });
    debugPrint("$_index");
  }

  //Cosntrutor
  _PgTrocarSenhaState();

  //Criando a tela do App
  @override
  Widget build(BuildContext context) {
    var tela = MaterialApp(
      home: Scaffold(
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Center(
              child: Text(
                "Informações do sistema",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            const Center(
              child: Text(
                "O freio está: ",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),

            //Mostrndo o estado do freio
            Center(
              child: EstadoFreio(estado[_index]),
            ),

            //Criando o btn de ativação/desativação do freio
            Center(
              child: SizedBox(
                height: 60,
                width: 300,
                child: ElevatedButton(
                  onPressed: _mudancaEstado,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    textStyle: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  child: Text(
                      "Clique aqui para ${_estadoContrario[_indexContrario]} o freio"),
                ),
              ),
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
