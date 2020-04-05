import 'package:flutter/material.dart';

class MovieDetailsListImages extends StatelessWidget {
  final List<String> posters;

  const MovieDetailsListImages({Key key, this.posters}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Text(
            "More poster".toUpperCase(),
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              
            ),
          ),
        ),
        
        Container(
          height: 200,
          padding: EdgeInsets.symmetric(vertical: 16),
          
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(
              width: 8.0,
            ),
            itemCount: posters.length,
            itemBuilder: (context, index) => ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                padding: EdgeInsets.only(left: 30),
                width: MediaQuery.of(context).size.width / 4,
                height: 175.0,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: NetworkImage(posters[index]),
                        fit: BoxFit.cover,
                        )),
              ),
            ),
          ),
        )
      ],
    );
  }
}
