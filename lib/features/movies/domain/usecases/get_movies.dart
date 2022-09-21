import 'package:dartz/dartz.dart';
import 'package:wemanity_app/core/network/failure.dart';
import 'package:wemanity_app/features/movies/domain/entities/movie_entity.dart';
import 'package:wemanity_app/features/movies/domain/repositories/movies_repository.dart';

class GetMovies {
  final MoviesRepository repository;
  GetMovies(this.repository);

  Future<Either<Failure, List<MovieEntity>>> execute() async {
    return await repository.getMovies();
  }
}
