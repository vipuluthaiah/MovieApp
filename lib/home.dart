import 'package:flutter/material.dart';
import 'moviedata.dart';
// import 'package:movie/details/moviedetails.dart';
import 'package:kino/details/moviedetails.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


//fetching data from api
  final List<Movie> movies = Movie.getMovies();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Movie App",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black),
      backgroundColor: Colors.black12,
      body: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: <Widget>[

                    
                Positioned(child: movieCard(movies[index], context)),
                   Positioned(
                    top: 12,
                    left: 12,
                    child: movieImage(movies[index].images[0])),
                    

              ],
            );
            // return Card(
            //   elevation: 4.5,
            //   color: Colors.blueGrey.shade400,
            //   child: ListTile(
            //     leading: CircleAvatar(
            //       child: Container(
            //         width: 200,
            //         height: 200,
            //         decoration: BoxDecoration(
            //           image: DecorationImage(
            //             image: NetworkImage(movies[index].images[1]),
            //             fit: BoxFit.cover,
            //           ),
            //             color: Colors.blueGrey.shade400,
            //             borderRadius: BorderRadius.circular(13.9)),
            //       ),
            //     ),
            //     title: Center(
            //         child: Text(
            //       // movies[index],
            //       "${movies[index].title}",
            //       style: TextStyle(
            //         color: Colors.white,
            //       ),
            //     )),
            //     subtitle: Text(
            //       "Sub",
            //       style: TextStyle(color: Colors.white),
            //     ),
            //     trailing: Icon(
            //       Icons.movieData,
            //       color: Colors.white,
            //     ),
            //     // onTap: ()=> debugPrint("Movie Tapped :   ${movies[index]}"),
            //     onTap: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => MovieDetails(movieName: movies.elementAt(index).title,
            //               movies: movies[index].director)));
            //     },
            //   ),
            // );
          }),
    );
  }

  Widget movieCard(Movie movieData, BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 60),
        width: MediaQuery.of(context).size.width,
        height: 130.0,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
            left: 28.0,
          ),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            movieData.title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                                              child: Text(
                          "Rating : ${movieData.imdbRating} /10",
                          style: mainTextStyle(),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Flexible(child: Text("Released :${movieData.released}", style: mainTextStyle())),
                      Text(movieData.runtime, style: mainTextStyle()),
                      Text(movieData.rated, style: mainTextStyle())
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
// onTap: ()=> debugPrint("Movie Tapped : ${movieData.title}"),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MovieListViewDetails(
                    // movieName: movieData.title, 
                    // movie:  movieData.director,
                    // movieName: movieData.title,
                    // movie: movieData.images,
                    
                  movieName:movieData.title,
                  movie: movieData,
                    
                    )));
      },
    );
  }

  TextStyle mainTextStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    );
  }

  Widget movieImage(String imageUrl) {
    return Container(
      width: 97.0,
      height: 97.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: NetworkImage(imageUrl ??
                "https://m.media-amazon.com/images/G/01/IMDb/BG_icon_Android._SX350_CR0,0,350,262_AL_.png"),
            fit: BoxFit.cover),
      ),
    );
  }
}











