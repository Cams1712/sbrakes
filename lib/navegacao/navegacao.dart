import 'package:flutter/material.dart';
import 'package:sbrakes/paginas/paginaLogin.dart';
import 'package:sbrakes/paginas/paginaRecuperarSenha.dart';
import 'package:sbrakes/paginas/paginaStatusFreio.dart';
import 'package:sbrakes/paginas/paginaTrocarSenha.dart';
import 'package:sbrakes/paginas/paginaUsuario.dart';

class Navegacao {
  paraPGLogin(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PgLogin(),
        ),
      );

  paraPGRecuperarSenha(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PgRecuperarSenha(),
        ),
      );

  paraPGStatusFreio(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PgStatusFreio(),
        ),
      );

  paraPGTrocarSenha(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PgTrocarSenha(),
        ),
      );

  paraPGUsuario(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PgUsuario(),
        ),
      );
}
