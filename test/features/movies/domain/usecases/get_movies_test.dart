import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:retrofit/dio.dart';
import 'package:wemanity_app/core/network/failure.dart';
import 'package:wemanity_app/features/movies/domain/entities/movie_entity.dart';
import 'package:wemanity_app/features/movies/domain/repositories/movies_repository.dart';
import 'package:wemanity_app/features/movies/domain/usecases/get_movies.dart';

import 'get_movies_test.mocks.dart';

@GenerateMocks(
  [
    MoviesRepository,
  ],
  customMocks: [
    MockSpec<HttpResponse<Map<String, dynamic>>>(
      as: #MockHttpResponse,
    ),
    MockSpec<HttpResponse<List<Map<String, dynamic>>>>(
      as: #MockHttpResponseList,
    ),
  ],
)
void main() {
  late MockMoviesRepository mockMoviesRepository;
  group('Movies  bloc', () {
    late GetMovies usecase;
    setUp(() {
      mockMoviesRepository = MockMoviesRepository();
      usecase = GetMovies(mockMoviesRepository);
    });

    final List<MovieEntity> movies = [];
    final Failure failure = ApiFailure();
    test('should get ressources  from the repository', () async {
      when(mockMoviesRepository.getMovies())
          .thenAnswer((_) async => Right(movies));
      final result = await usecase.execute();
      expect(result, Right(movies));
      verify(mockMoviesRepository.getMovies());
      verifyNoMoreInteractions(mockMoviesRepository);
    });

    test('should return failure from the repository', () async {
      when(mockMoviesRepository.getMovies())
          .thenAnswer((_) async => Left(failure));
      final result = await usecase.execute();
      expect(result, Left(failure));
      verify(mockMoviesRepository.getMovies());
      verifyNoMoreInteractions(mockMoviesRepository);
    });
  });
}
