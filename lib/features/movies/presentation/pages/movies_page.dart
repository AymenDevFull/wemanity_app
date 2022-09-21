import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wemanity_app/features/movies/presentation/bloc/movies_bloc.dart';
import 'package:wemanity_app/features/movies/presentation/bloc/movies_state.dart';
import 'package:wemanity_app/features/movies/presentation/widgets/list_movies.dart';
import 'package:vrouter/vrouter.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MoviesBloc, MoviesState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is MoviesStateInitial) {
          return Center(
              child: TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () => context.read<MoviesBloc>().getMovies(),
            child: Text('SHOW MOVIES'),
          ));
        } else if (state is MoviesStateLoading) {
          return Center(
            child: SizedBox(
              width: 25,
              height: 25,
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is MoviesStateSuccess) {
          return ListMoviesWidget(
            movies: state.movies,
            onSelected: (movie) => context.vRouter.to(
              '/movies/detail/${movie.title}',
              historyState: {
                'movie': jsonEncode(
                  movie.toJson(),
                ),
              },
            ),
          );
        } else if (state is MoviesStateFailed) {
          return Center(
            child: Text(
              "Server error ...",
              style: const TextStyle(
                color: Colors.red,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          );
        } else {
          return Center();
        }
      },
    );
  }
}
