// ignore_for_file: prefer_final_fields, use_key_in_widget_constructors, file_names
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:sbrakes/navegation/navegacao.dart';

class PgLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PgLoginState();
  }
}

class _PgLoginState extends State<PgLogin> {
  //Criando um text span para fazer o link de esqueceu a senha
  TextSpan _buildLink(
      {required BuildContext context,
      required String title,
      required VoidCallback onTap}) {
    return TextSpan(
      text: title,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontSize: 15,
            color: Colors.blue.shade900,
          ),
      //reconhecedor de gestos
      recognizer: TapGestureRecognizer()..onTap = onTap,
    );
  }

  final txemail = TextEditingController();
  final txsenha = TextEditingController();

  //Cosntrutor
  _PgLoginState();

  //Criando a tela do App
  @override
  Widget build(BuildContext context) {
    var tela = MaterialApp(
      home: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
                Divider(
                  thickness: 3,
                  color: Colors.black,
                ),
                Text(
                  "Faça o Login para poder obter acesso ao menu de ferramentas",
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
              ],
            ),

            //Inputs
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Digite seu Login:\n",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                TextField(
                  autofocus: true,
                  controller: txemail,
                  decoration: const InputDecoration(
                    hintText: "Digite seu e-mail",
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
                const Text(
                  "\nDigite sua senha:\n",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                TextField(
                  controller: txsenha,
                  decoration: const InputDecoration(
                    hintText: "Digite sua senha",
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),

                //Link de esqueceu a senha
                RichText(
                  text: _buildLink(
                    context: context,
                    title: "\nEsqueceu sua senha?",
                    onTap: () {
                      var n = Navegacao();
                      Navigator.pop(context);
                      n.paraPGRecuperarSenha(context);
                    },
                  ),
                ),
              ],
            ),

            //Botão de entrar
            ElevatedButton(
              onPressed: () async {
                /*
                DataBase n = DataBase(email: txemail, nome: "Teste", img: "oi");
                await ();*/
                var n = Navegacao();
                Navigator.pop(context);
                n.paraPGStatusFreio(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size(200, 50),
              ),
              child: const Text(
                "Entrar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
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
