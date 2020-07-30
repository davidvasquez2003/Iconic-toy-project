import 'package:flutter/material.dart';
import 'package:flutter_project_iconic/screens/movie_detail.dart';
import 'item_card.dart';
import 'movie_model.dart';

class Carousel extends StatelessWidget {
  const Carousel({@required this.movieType});

  final int movieType;

  @override
  Widget build(BuildContext context) {
    Image mainImage;

    if (movieType == 1) {
      mainImage = Image.network(
        'https://imdb-api.com/images/original/MV5BYjk0MTgzMmQtZmY2My00NmE5LWExNGUtYjZkNTA3ZDkyMTJiXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg',
        fit: BoxFit.cover,
      );
    } else if (movieType == 2) {
      mainImage = Image.network(
        'https://imdb-api.com/images/original/MV5BZWUyY2M2M2UtMGI1NC00ZjBmLWI5NDItYjQ1MThjNzgwMjhmXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_Ratio0.6716_AL_.jpg',
        fit: BoxFit.cover,
      );
    } else {
      mainImage = Image.network(
        'https://imdb-api.com/images/original/MV5BYjk0MTgzMmQtZmY2My00NmE5LWExNGUtYjZkNTA3ZDkyMTJiXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg',
        fit: BoxFit.cover,
      );
    }

    return Container(
      //margin: EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 240.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                FlatButton(
                  child: ItemCard(
                    cardImage: mainImage,
                  ),
                  onPressed: () {
                    var selectedMovie = new Movie(
                        rank: '',
                        id: '',
                        title: '',
                        fullTitle: 'HARRY POTTER',
                        crew: '',
                        poster: 'https://imdb-api.com/images/original/MV5BYjk0MTgzMmQtZmY2My00NmE5LWExNGUtYjZkNTA3ZDkyMTJiXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg');

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieDetail(
                            theMovie: selectedMovie,
                          ),
                        ));
                    //Navigator.pushNamed(context, MovieDetail.nav);
                  },
                ),
                ItemCard(
                  cardImage: mainImage,
                ),
                ItemCard(
                  cardImage: mainImage,
                ),
                ItemCard(
                  cardImage: mainImage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//ItemCard(
//cardMainColor: Colors.cyan,
//cardImage: mainImage,
//),
//ItemCard(
//cardMainColor: Colors.lightGreen, cardImage: mainImage),
//ItemCard(cardMainColor: Colors.lightBlue, cardImage: mainImage),
//ItemCard(cardMainColor: Colors.yellow, cardImage: mainImage),
//ItemCard(cardMainColor: Colors.red, cardImage: mainImage),
