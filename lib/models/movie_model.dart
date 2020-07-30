class Movie {
  final String rank;
  final String id;
  final String title;
  final String fullTitle;
  final String crew;
  final String poster;
  //final int imDbRating;

  Movie(
      {this.rank,
        this.id,
        this.title,
        this.fullTitle,
        this.crew,
        this.poster
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