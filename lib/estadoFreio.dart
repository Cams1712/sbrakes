// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EstadoFreio extends StatelessWidget {
  String estado;

  EstadoFreio(this.estado, {super.key});

  @override
  Widget build(BuildContext context) {
    if (estado == "Ativado") {
      return Text(
        estado,
        style: const TextStyle(
          fontSize: 50,
          color: Color.fromARGB(255, 39, 164, 43),
        ),
      );
    } else {
      return Text(
        estado,
        style: const TextStyle(
          fontSize: 50,
          color: Color.fromARGB(255, 250, 26, 10),
        ),
      );
    }
  }
}
