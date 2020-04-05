import 'package:flutter/material.dart';
// import 'package:movie/tumbnail.dart';
import 'package:kino/tumbnail.dart';
// import 'package:movie/moviedata.dart';
import 'package:kino/moviedata.dart';
import 'Poster.dart';
import 'Acrors.dart';
import 'ImageList.dart';

class MovieListViewDetails extends StatelessWidget {
// final List<Movie> movieData =Movie.getMovies();

  final String movieName;
  final Movie movie;

  const MovieListViewDetails({Key key, this.movieName, this.movie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          this.movieName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      
      // body: Container(
      //   child: Center(
      //     child: Column(children: <Widget>[
      //       Center(
      //         child: Container(
      //           child: Center(child: Text("${this.movies}")),
      //         ),
      //       ),
      //       Container(
      //         child: RaisedButton(
      //             child: Text("Go Back"),
      //             onPressed: () {
      //               Navigator.pop(context);
      //             }),
      //       ),
      //     ]),
      //   ),

      //   //   ),
      // ),
      
      body: ListView(
        children: <Widget>[
          
          // MovieTumbNail(tumbnail: tumbNail),
          // MovieDetailHeaderWithPoster(movieData:movies)
          // MovieDetailHeaderWithPoster(movieData: movieData,)
          MovieTumbNail(tumbnail: movie.images[0] ),
          HorizontalLine(),
          MovieDetailHeaderWithPoster(movieData: movie),
          HorizontalLine(),
          MovieDetailsCast(movie: movie,),
          HorizontalLine(),
          MovieDetailsListImages(posters: movie.images,),

        ],
      ),
    );
  }
}
