import 'package:flutter/material.dart';
import 'package:flutter_project_iconic/models/carousel.dart';

class MovieRows extends StatelessWidget {
  final int number;
  const MovieRows({this.number});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Carousel(
          movieType: number,
        ),
      ),
    );
  }
}