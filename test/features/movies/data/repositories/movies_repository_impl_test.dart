import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:retrofit/dio.dart';
import 'package:wemanity_app/features/movies/data/datasources/api_client.dart';
import 'package:wemanity_app/features/movies/data/models/movie_model.dart';
import 'package:wemanity_app/features/movies/data/repositories/movies_repository_impl.dart';

import 'movies_repository_impl_test.mocks.dart';

@GenerateMocks(
  [
    ApiClient,
    Response,
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
  late MockApiClient mockApiClient;
  group('Movies  bloc', () {
    late MoviesRepositoryImpl repositoryImpl;
    setUp(() {
      mockApiClient = MockApiClient();

      repositoryImpl = MoviesRepositoryImpl(
        apiClient: mockApiClient,
      );
    });

    final List<MovieModel> movies = [
      MovieModel(
        title: "title",
        year: 1987,
        director: "director",
        posterUrl: "posterUrl",
      )
    ];
    test('should get movies success', () async {
      //GIVEN
      when(
        mockApiClient.getMovies(),
      ).thenAnswer(
        (realInvocation) => Future<List<MovieModel>>.value(
          movies,
        ),
      );

      //WHEN
      final result = await repositoryImpl.getMovies();

      //THEN
      expect(result, Right(movies));
      verify(mockApiClient.getMovies());
      verifyNoMoreInteractions(mockApiClient);
    });
  });
}
