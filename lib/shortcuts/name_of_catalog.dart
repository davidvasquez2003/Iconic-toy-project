import 'package:flutter/material.dart';
class NameOfCatalog extends StatelessWidget {
  final String nombre;
  final double tamano;
  NameOfCatalog({this.nombre,this.tamano});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Text(
            nombre,
            style: TextStyle(
              fontSize: tamano,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}