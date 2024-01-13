import 'package:flutter/material.dart';
import 'package:movie_app/views/movie_view.dart';
import 'package:movie_app/widgets/movie_rating.dart';
import 'package:movie_app/widgets/movie_year.dart';

class MovieContainer extends StatelessWidget {
  const MovieContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 8,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const MovieView()
            ),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/1917.jpg",
              width: 100,
            ),
            const SizedBox(width: 16.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "1917",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "Action, Drama, & War",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white60,
                  ),
                ),
                const SizedBox(height: 4.0,),
                const Row(
                  children: [
                    MovieYear(),
                    SizedBox(width: 4.0,),
                    MovieRating(),
                  ],
                ),
                const SizedBox(height: 4.0,),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 140,
                  child: const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 10.0,

                    ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
