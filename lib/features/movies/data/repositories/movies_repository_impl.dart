import 'package:wemanity_app/features/movies/data/datasources/api_client.dart';
import 'package:wemanity_app/features/movies/domain/entities/movie_entity.dart';
import 'package:wemanity_app/core/network/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:wemanity_app/features/movies/domain/repositories/movies_repository.dart';

class MoviesRepositoryImpl extends MoviesRepository {
  ApiClient apiClient;
  MoviesRepositoryImpl({
    required this.apiClient,
  });

  @override
  Future<Either<Failure, List<MovieEntity>>> getMovies() async {
    try {
      var movies = await apiClient.getMovies();
      return Right(movies);
    } on Failure {
      return Left(ApiFailure());
    }
  }
}
