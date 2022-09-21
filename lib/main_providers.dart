import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wemanity_app/features/movies/data/datasources/api_client.dart';
import 'package:wemanity_app/features/movies/data/repositories/movies_repository_impl.dart';
import 'package:wemanity_app/features/movies/domain/usecases/get_movies.dart';
import 'package:wemanity_app/features/movies/presentation/bloc/movies_bloc.dart';

class MainProviders extends StatelessWidget {
  final Widget child;
  final ApiClient apiClient;

  const MainProviders({
    Key? key,
    required this.child,
    required this.apiClient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => MoviesRepositoryImpl(
        apiClient: apiClient,
      ),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<MoviesBloc>(
            create: (context) => MoviesBloc(
              usecase: GetMovies(context.read<MoviesRepositoryImpl>()),
            ),
          ),
        ],
        child: child,
      ),
    );
  }
}
