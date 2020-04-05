import 'package:flutter/material.dart';

class MovieTumbNail extends StatelessWidget {
  final String tumbnail;

  const MovieTumbNail({Key key, this.tumbnail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(tumbnail),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 45),
              child: Icon(
                Icons.play_circle_outline,
                size: 100,
                color: Colors.white,
              ),
            ))
          ],
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0x00f5f5f5),
// Color(0xfff5f5f5),
              Colors.redAccent
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          height: 100,
        )
      ],
    );
  }
}
