import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

Future<Movie> fetchMovie() async {
  final response =
  await http.get('https://imdb-api.com/en/API/MostPopularMovies/k_Iw57A0hX');


  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Movie.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load movie');
  }
}

class Movie {
  final int rank;
  final int id;
  final String title;
  final String fullTitle;
  final String crew;
  //final int imDbRating;

  Movie(
      {this.rank,
        this.id,
        this.title,
        this.fullTitle,
        this.crew
        });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      rank: json["rank"],
      id: json['id'],
      title: json["title"],
      fullTitle: json["fullTitle"],
      crew: json["crew"],
      //imDbRating: json["imDbRating"],
    );
  }
}

void main() => runApp(MainScreen());

class MainScreen extends StatefulWidget {
  static const nav = 'main_screen';
  MainScreen({Key key}) : super (key:key);


  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  Future<Movie> futureMovie;

  @override
  void initState()  {
    super.initState();
    futureMovie = fetchMovie();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Movie>(
            future: futureMovie,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                Movie test1 = snapshot.data;
                print("Esto es lo que viene  ${test1.fullTitle}");
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
    }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}

//import 'package:flutter_project_iconic/screens/api_url.dart';

//class MainScreen extends StatelessWidget {
//  static const nav = 'MainScreen';
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: RaisedButton(
//        child: Text('Next Page'),
//        onPressed: (){
////          Navigator.pushNamed(context, ApiKey.nav);
//        },
//      ),
//    );
//  }
//}
