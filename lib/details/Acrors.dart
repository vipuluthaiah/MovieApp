import 'package:flutter/material.dart';
// import 'package:movie/moviedata.dart';
import 'package:kino/moviedata.dart';

class MovieDetailsCast extends StatelessWidget {
  final Movie movie;

  const MovieDetailsCast({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: <Widget>[
            MovieFiels(field: "Cast : ", value: movie.actors),
            MovieFiels(field: "Directors : ", value: movie.director),
            MovieFiels(field: "Awards : ", value: movie.awards),
            MovieFiels(field: "Type : ", value: movie.type),
            MovieFiels(field: "ImdbID : ", value: movie.imdbID),
          ],
        ));
  }
}

class MovieFiels extends StatelessWidget {
  final String field;
  final String value;

  const MovieFiels({Key key, this.field, this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "$field ",
          style: TextStyle(
              color: Colors.red, fontSize: 12, fontWeight: FontWeight.w300),
        ),
        Expanded(
          child: Text(
            "$value ",
            style: TextStyle(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }
}

class HorizontalLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Container(
        height: 0.5,
        color: Colors.grey,
      ),
    );
  }
}
