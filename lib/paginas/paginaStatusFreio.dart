// ignore_for_file: prefer_final_fields, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

import 'package:sbrakes/widgetsPersonalisados/estadoFreio.dart';
import 'package:sbrakes/navegation/navegacao.dart';

main() => runApp(PgStatusFreio());

class PgStatusFreio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PgStatusFreioState();
  }
}

class _PgStatusFreioState extends State<PgStatusFreio> {
  var _index = 0;
  var _indexContrario = 1;
  var estado = ["Ativado", "Desativado"];
  var _estadoContrario = ["ativar", "desativar"];

  //Muda o indice
  void _mudancaEstado() {
    setState(() {
      _index == 1 ? _indexContrario++ : _indexContrario--;
      _index == 1 ? _index-- : _index++;
    });
  }

  //Cosntrutor
  _PgStatusFreioState();

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
              //Colocando os dados do usuário no menu lateral
              const UserAccountsDrawerHeader(
                accountName: Text(
                  "Fulano da Silva",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                accountEmail: Text(
                  "fulanoDaSilva@gmail.com",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/fotos-premium/cachorrinho-fofo-de-spitz-pomeranian-deitado-no-fundo-amarelo-brilhante_253512-22.jpg?w=2000"),
                ),
              ),

              //Colocando as paginas que o usuario pode clicar
              Builder(
                builder: (context) => ListTile(
                  title: const Text("Home"),
                  trailing: const Icon(Icons.home),
                  onTap: () {
                    var n = Navegacao();
                    n.paraPGStatusFreio(context);
                  },
                ),
              ),
              Builder(
                builder: (context) => ListTile(
                  title: const Text("Trocar Senha"),
                  trailing: const Icon(Icons.password_outlined),
                  onTap: () {
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
