import 'package:flutter/material.dart';
import 'package:movie_app/controller/movie_controller.dart';
import 'package:movie_app/model/movie.dart';
import 'package:provider/provider.dart';

class MovieView extends StatelessWidget {
  final Movie movie;

  const MovieView({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MovieController>(
      builder: (context, movieController, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0XFF17141F),
            leading: GestureDetector(
              onTap: () {
                // add it at 4-route-screen
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.white,
              ),
            ),
            title: const Text(
              "Movie",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                  color: Colors.white
              ),
            ),
          ),
          backgroundColor: const Color(0XFF17141F),
          body: Stack(
              children: [
                ListView(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(movie.imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 8.0,),
                        Text(
                          movie.title,
                          style: const TextStyle(
                            fontSize: 28.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 2.0,),
                        Text(
                          movie.category,
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(height: 4.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              movie.year,
                              style: const TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const SizedBox(width: 4.0,),
                            const Text(
                              '|',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const SizedBox(width: 4.0,),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Color(0xFFFFD700),
                                  size: 16.0,
                                ),
                                SizedBox(width: 4.0,),
                                Text(
                                  movie.rating.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 4.0,),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 12.0,
                            left: 16.0,
                            right: 16.0,
                            bottom: 72.0,
                          ),
                          child: Text(
                            movie.description,
                            style: const TextStyle(
                              fontSize: 14.0,
                              color: Colors.white70,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: const Color(0XFF17141F),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Colors.redAccent),
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    shadowColor: Colors.blue,
                                    backgroundColor: Colors.white,
                                    title: const Text(
                                      "Warning",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28.0,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    content: const Text(
                                      "Would you like to delete this movie?",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16.0,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        key: const Key("Yes"),
                                        onPressed: () {
                                          movieController.removeMovie(movie.id);
                                          Navigator.of(context, rootNavigator: true).pop();
                                          Navigator.of(context, rootNavigator: true).pop();
                                        },
                                        child: const Text("Yes"),
                                      ),
                                      TextButton(
                                        key: const Key("No"),
                                        onPressed: () {
                                          Navigator.of(context, rootNavigator: true).pop();
                                        },
                                        child: const Text("No"),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: const Text(
                              'Remove',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8.0,),
                        Expanded(
                          child: TextButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Colors.white),
                            ),
                            onPressed: () {
                            },
                            child: const Text(
                              'Edit',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]
          ),
        );
      },
    );
  }
}
