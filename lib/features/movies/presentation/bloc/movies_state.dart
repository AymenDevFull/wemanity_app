import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wemanity_app/core/network/failure.dart';
import 'package:wemanity_app/features/movies/domain/entities/movie_entity.dart';

part 'movies_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class MoviesState with _$MoviesState {
  const MoviesState._();

  factory MoviesState.initial() = MoviesStateInitial;

  factory MoviesState.loading() = MoviesStateLoading;

  factory MoviesState.success({
    required List<MovieEntity> movies,
  }) = MoviesStateSuccess;

  factory MoviesState.failed({
    required Failure? failure,
  }) = MoviesStateFailed;
}
