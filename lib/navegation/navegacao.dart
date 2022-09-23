import 'package:flutter/material.dart';
import 'package:sbrakes/paginas/paginaLogin.dart';
import 'package:sbrakes/paginas/paginaRecuperarSenha.dart';
import 'package:sbrakes/paginas/paginaStatusFreio.dart';
import 'package:sbrakes/paginas/paginaTrocarSenha.dart';

class Navegacao {
  Navegacao();

  void paraPGLogin(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PgLogin(),
        ),
      );

  void paraPGRecuperarSenha(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PgRecuperarSenha(),
        ),
      );

  void paraPGStatusFreio(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PgStatusFreio(),
        ),
      );

  void paraPGTrocarSenha(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PgTrocarSenha(),
        ),
      );
}
