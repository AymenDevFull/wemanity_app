import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wemanity_app/core/network/failure.dart';
import 'package:wemanity_app/features/movies/domain/usecases/get_movies.dart';
import 'package:wemanity_app/features/movies/presentation/bloc/movies_bloc.dart';
import 'package:wemanity_app/features/movies/presentation/bloc/movies_state.dart';

import 'movies_bloc_test.mocks.dart';

@GenerateMocks(
  [GetMovies],
)
void main() {
  late GetMovies usecase;

  group('Movies  bloc', () {
    late MoviesBloc moviesBloc;
    Failure failure = ApiFailure();

    setUp(() {
      usecase = MockGetMovies();
      moviesBloc = MoviesBloc(
        usecase: usecase,
      );
    });

    test('initial state is idle', () {
      expect(
        moviesBloc.state,
        MoviesState.initial(),
      );
    });
    blocTest<MoviesBloc, MoviesState>(
      'Get movies success',
      build: () => moviesBloc,
      setUp: () {
        when(
          usecase.execute(),
        ).thenAnswer(
          (realInvocation) => Future.value(
            Right([]),
          ),
        );
      },
      act: (bloc) => bloc.getMovies(),
      expect: () => [
        MoviesState.loading(),
        MoviesState.success(movies: []),
      ],
      verify: (bloc) {
        verify(
          usecase.execute(),
        ).called(1);
      },
    );

    blocTest<MoviesBloc, MoviesState>(
      'Get movies failed',
      build: () => moviesBloc,
      setUp: () {
        when(
          usecase.execute(),
        ).thenAnswer(
          (realInvocation) => Future.value(
            Left(failure),
          ),
        );
      },
      act: (bloc) => bloc.getMovies(),
      expect: () => [
        MoviesState.loading(),
        isA<MoviesStateFailed>(),
      ],
      verify: (bloc) {
        verify(
          usecase.execute(),
        ).called(1);
      },
    );
  });
}
