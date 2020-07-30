import 'package:flutter/material.dart';
import 'package:flutter_project_iconic/models/movie_model.dart';

class MovieDetail extends StatelessWidget {
  final Movie theMovie;

  MovieDetail({@required this.theMovie});

  static const nav = 'movie_detail';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.black26,
          body: Container(
            child: Image.network(
              theMovie.poster,
              color: Color.fromRGBO(255, 255, 255, 0.5),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
        ),
        Card(
          child: Column(
              mainAxisSize:
              MainAxisSize.max,
              children: <Widget>[
              const ListTile(
                title: Text('Hola'),
              )
          ]),
        )
      ],
    );
  }
}
