//Future<Movie> fetchMovie() async {
//  final response =
//  await http.get('https://imdb-api.com/en/API/MostPopularMovies/k_Iw57A0hX');
//
//
//  if (response.statusCode == 200) {
//    // If the server did return a 200 OK response,
//    // then parse the JSON.
//    return Movie.fromJson(json.decode(response.body));
//  } else {
//    // If the server did not return a 200 OK response,
//    // then throw an exception.
//    throw Exception('Failed to load movie');
//  }
//}
//
//class Movie {
//  final int rank;
//  final int id;
//  final String title;
//  final String fullTitle;
//  final String crew;
//  //final int imDbRating;
//
//  Movie(
//      {this.rank,
//        this.id,
//        this.title,
//        this.fullTitle,
//        this.crew
//      });
//
//  factory Movie.fromJson(Map<String, dynamic> json) {
//    return Movie(
//      rank: json["rank"],
//      id: json['id'],
//      title: json["title"],
//      fullTitle: json["fullTitle"],
//      crew: json["crew"],
//      //imDbRating: json["imDbRating"],
//    );
//  }
//}