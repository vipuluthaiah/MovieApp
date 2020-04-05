import 'package:flutter/material.dart';
// import 'package:movie/moviedata.dart';
import 'package:kino/moviedata.dart';

class MovieDetailHeaderWithPoster extends StatelessWidget {
  final Movie movieData;

  const MovieDetailHeaderWithPoster({Key key, this.movieData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: <Widget>[
          MoviePoster(poster: movieData.images[2].toString()),
          SizedBox(width: 17.0),
          Expanded(child: MovieDetailsHeader(movie: movieData,))
                  ],
                ),
              );
            }
          }
          


class MoviePoster extends StatelessWidget {
  final String poster;

  const MoviePoster({Key key, this.poster}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var borderRadis = BorderRadius.all(Radius.circular(10));
    return Card(
      child: ClipRRect(
        borderRadius: borderRadis,
        child: Container(
          width: MediaQuery.of(context).size.width / 4,
          height: 160,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(poster), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}


class MovieDetailsHeader extends StatelessWidget {
  final Movie movie;

  const MovieDetailsHeader({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[
  Text("${movie.year}.${movie.genre}".toUpperCase(),
  style: TextStyle(
fontWeight: FontWeight.bold,
color: Colors.redAccent,
fontSize: 18
  ),
  ),
    Text("${movie.title}".toUpperCase(),
  style: TextStyle(
fontWeight: FontWeight.w500,
color: Colors.black,
fontSize: 30
  ),
  ),

Text.rich(TextSpan(
  style: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
  ),
  children: <TextSpan>[
    TextSpan(
      text: movie.plot,
    ),

TextSpan(

  text: "More...",
  style: TextStyle(
color: Colors.indigoAccent,
  )
)
  ]
))
],
    );
  }
}



