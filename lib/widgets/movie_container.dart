import 'package:flutter/material.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/views/movie_view.dart';
import 'package:movie_app/widgets/movie_rating.dart';
import 'package:movie_app/widgets/movie_year.dart';

class MovieContainer extends StatelessWidget {
  final Movie movie;
  const MovieContainer({
    super.key,
    required this.movie,
  });

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
              movie.imagePath,
              width: 100,
            ),
            const SizedBox(width: 16.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  movie.category,
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.white60,
                  ),
                ),
                const SizedBox(height: 4.0,),
                Row(
                  children: [
                    MovieYear(
                      year: movie.year,
                    ),
                    const SizedBox(width: 4.0,),
                    MovieRating(
                      rating: movie.rating,
                    ),
                  ],
                ),
                const SizedBox(height: 4.0,),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 140,
                  child: Text(
                    movie.description,
                    style: const TextStyle(
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
