// ignore_for_file: prefer_final_fields, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

import 'package:sbrakes/navegation/navegacao.dart';

class PgRecuperarSenha extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PgRecuperarSenhaState();
  }
}

class _PgRecuperarSenhaState extends State<PgRecuperarSenha> {
  //Cosntrutor
  _PgRecuperarSenhaState();

  //Criando a tela do App
  @override
  Widget build(BuildContext context) {
    var tela = MaterialApp(
      home: Scaffold(
          //Barra do app
          appBar: AppBar(
            //Colocando o icone de voltar na pag
            leading: IconButton(
              onPressed: () {
                var n = Navegacao();
                Navigator.pop(context);
                n.paraPGLogin(context);
              },
              icon: const Icon(Icons.arrow_back_rounded),
            ),
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
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text(
                  "Recupere sua senha",
                  style: TextStyle(fontSize: 50),
                ),
                const Text(
                  "Para recuperar sua senha coloque o seu email cadastrado na empresa, dessa forma você receberá sua nova senha em alguns momentos:",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                //Criando o input de dados
                const TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Digite seu e-mail",
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),

                //Criando o botão de enviar
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      var n = Navegacao();
                      Navigator.pop(context);
                      n.paraPGLogin(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text(
                      "Enviar",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );

    return tela;
  }
}
