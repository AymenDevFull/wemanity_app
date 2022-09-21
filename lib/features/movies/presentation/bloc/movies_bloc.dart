import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wemanity_app/core/network/failure.dart';
import 'package:wemanity_app/features/movies/domain/usecases/get_movies.dart';
import 'package:wemanity_app/features/movies/presentation/bloc/movies_state.dart';

class MoviesBloc extends Cubit<MoviesState> {
  GetMovies usecase;

  MoviesBloc({
    required this.usecase,
  }) : super(
          MoviesState.initial(),
        );

  Future<void> getMovies() async {
    emit(
      MoviesState.loading(),
    );
    try {
      final movies = await usecase.execute();
      movies.fold(
        (failure) => emit(
          MoviesState.failed(failure: ApiFailure()),
        ),
        (movies) => emit(
          MoviesState.success(movies: movies),
        ),
      );
    } on Failure {
      emit(
        MoviesState.failed(failure: ServerFailure()),
      );
    }
  }
}
