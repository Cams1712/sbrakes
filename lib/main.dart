// ignore_for_file: prefer_final_fields, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

void main() => runApp(PgUsuario());

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
            Container(
              padding: const EdgeInsets.all(32),
              child: Column(
                //Faz com que o texto inicie no mesmo lugar que o de baixo
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Funcionário da Silva",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Row(
                    children: const <Widget>[
                      //Tirar quando colocar o num do banco
                      Text(
                        "Credencial: ",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      //Colocar a credencial do funcionário
                      Text(
                        "XXXXXXXXXX",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //Colocando a imagem do funcionário
            const Image(
              image: NetworkImage(
                "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg", //Trocar imag pela do banco
              ),
              height: 150,
              width: 200,
            ),
            const TextField(
              readOnly: true,
              enabled: false,
              decoration: InputDecoration(
                hintText: "Teste@gmail.com",
                contentPadding: EdgeInsets.all(10),
                enabledBorder: InputBorder.none,
                icon: Icon(Icons.email_outlined),
              ),
            ),
            const TextField(
              readOnly: true,
              enabled: false,
              decoration: InputDecoration(
                hintText: "Teste@gmail.com",
                contentPadding: EdgeInsets.all(10),
                enabledBorder: InputBorder.none,
                icon: Icon(Icons.key),
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
