// Mocks generated by Mockito 5.3.1 from annotations
// in wemanity_app/test/features/movies/domain/usecases/get_movies_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i2;
import 'package:dio/dio.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:retrofit/dio.dart' as _i8;
import 'package:wemanity_app/core/network/failure.dart' as _i6;
import 'package:wemanity_app/features/movies/domain/entities/movie_entity.dart'
    as _i7;
import 'package:wemanity_app/features/movies/domain/repositories/movies_repository.dart'
    as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_1<T> extends _i1.SmartFake implements _i3.Response<T> {
  _FakeResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [MoviesRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockMoviesRepository extends _i1.Mock implements _i4.MoviesRepository {
  MockMoviesRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.Either<_i6.Failure, List<_i7.MovieEntity>>> getMovies() =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovies,
          [],
        ),
        returnValue:
            _i5.Future<_i2.Either<_i6.Failure, List<_i7.MovieEntity>>>.value(
                _FakeEither_0<_i6.Failure, List<_i7.MovieEntity>>(
          this,
          Invocation.method(
            #getMovies,
            [],
          ),
        )),
      ) as _i5.Future<_i2.Either<_i6.Failure, List<_i7.MovieEntity>>>);
}

/// A class which mocks [HttpResponse].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpResponse extends _i1.Mock
    implements _i8.HttpResponse<Map<String, dynamic>> {
  MockHttpResponse() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Map<String, dynamic> get data => (super.noSuchMethod(
        Invocation.getter(#data),
        returnValue: <String, dynamic>{},
      ) as Map<String, dynamic>);
  @override
  _i3.Response<dynamic> get response => (super.noSuchMethod(
        Invocation.getter(#response),
        returnValue: _FakeResponse_1<dynamic>(
          this,
          Invocation.getter(#response),
        ),
      ) as _i3.Response<dynamic>);
}

/// A class which mocks [HttpResponse].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpResponseList extends _i1.Mock
    implements _i8.HttpResponse<List<Map<String, dynamic>>> {
  MockHttpResponseList() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<Map<String, dynamic>> get data => (super.noSuchMethod(
        Invocation.getter(#data),
        returnValue: <Map<String, dynamic>>[],
      ) as List<Map<String, dynamic>>);
  @override
  _i3.Response<dynamic> get response => (super.noSuchMethod(
        Invocation.getter(#response),
        returnValue: _FakeResponse_1<dynamic>(
          this,
          Invocation.getter(#response),
        ),
      ) as _i3.Response<dynamic>);
}
