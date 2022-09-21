import 'package:dartz/dartz.dart';
import 'package:wemanity_app/core/network/failure.dart';
import 'package:wemanity_app/features/movies/domain/entities/movie_entity.dart';

abstract class MoviesRepository {
  Future<Either<Failure, List<MovieEntity>>> getMovies();
}
