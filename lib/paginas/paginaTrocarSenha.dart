// ignore_for_file: prefer_final_fields, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

import 'package:sbrakes/navegation/navegacao.dart';

class PgTrocarSenha extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PgTrocarSenhaState();
  }
}

class _PgTrocarSenhaState extends State<PgTrocarSenha> {
  //Função que pucha os dados do banco
  void _atualizarBanco() {
    //Colocar banco de dados
    debugPrint("teste");
  }

  //Cosntrutor
  _PgTrocarSenhaState();

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(2),
                child: Column(
                  children: const [
                    Text(
                      "Atenção!\nA senha deve conter pelo menos 6 caracteres, sendo pelo menos: 1 maiuscula, 1 minuscula, 1 número e 1 caracter especial.",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                "Redefinição de senha",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),

              //Inputs
              const Text(
                "Digite sua senha: ",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 50,
                width: 355,
                child: TextField(
                  autofocus: true,
                ),
              ),
              const Text(
                "Digite novamente a sua senha: ",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),

              //Botão de redefinir
              const SizedBox(
                height: 50,
                width: 355,
                child: TextField(),
              ),
              ElevatedButton(
                  onPressed: _atualizarBanco,
                  child: const Center(
                    child: Text(
                      "Trocar Senha",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  )),
            ],
          ),
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
