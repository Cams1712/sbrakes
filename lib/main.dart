// ignore_for_file: prefer_final_fields, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:sbrakes/widgetsPersonalisados/estadoFreio.dart';
import 'package:sbrakes/navegacao/navegacao.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MeuAppState();
  }
}

class _MeuAppState extends State<MeuApp> {
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
  _MeuAppState();

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
                    debugPrint("Entrou PgInicial2");
                    Navigator.of(context).pop();
                    debugPrint("Entrou PgInicial3");
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
                    n.paraPGUsuario(context);
                    debugPrint("Entrou PgUsuario2");
                    Navigator.of(context).pop();
                    debugPrint("Entrou PgUsuario3");
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
