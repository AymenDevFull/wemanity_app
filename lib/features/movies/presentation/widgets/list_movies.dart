import 'package:flutter/material.dart';
import 'package:wemanity_app/features/movies/domain/entities/movie_entity.dart';

class ListMoviesWidget extends StatelessWidget {
  final List<MovieEntity> movies;
  final Function(
    MovieEntity,
  ) onSelected;
  const ListMoviesWidget({
    required this.movies,
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MOVIES",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: movies.map((movie) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () => onSelected(
                    movie,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 100.0,
                            width: 100.0,
                            child: Image.network(
                              movie.posterUrl,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "title : ${movie.title}",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "year : ${movie.year}",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "director : ${movie.director}",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 3.0,
                          bottom: 3.0,
                        ),
                        child: Divider(
                          color: Colors.green[200],
                          height: 4.0,
                          indent: 2.0,
                          endIndent: 2.0,
                        ),
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
