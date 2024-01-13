import 'package:flutter/material.dart';
import 'package:movie_app/controller/movie_controller.dart';
import 'package:movie_app/widgets/movie_container.dart';
import 'package:provider/provider.dart';

class MovieListView extends StatelessWidget {
  const MovieListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MovieController>(
      builder: (context, movieController, child) {
        final movies = movieController.movies;
        return Scaffold(
            backgroundColor: const Color(0XFF17141F),
            appBar: AppBar(
              backgroundColor: const Color(0XFF17141F),
              centerTitle: true,
              title: const Text(
                "Movies",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: const [
                Icon(
                  Icons.add,
                  color: Colors.white,
                )
              ],
            ),
            body: ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return MovieContainer(movie: movies[index],);
              },
            )
        );
      },
    );
  }
}
