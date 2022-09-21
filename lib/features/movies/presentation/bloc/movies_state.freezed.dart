// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoviesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies) success,
    required TResult Function(Failure? failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? success,
    TResult Function(Failure? failure)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? success,
    TResult Function(Failure? failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesStateInitial value) initial,
    required TResult Function(MoviesStateLoading value) loading,
    required TResult Function(MoviesStateSuccess value) success,
    required TResult Function(MoviesStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoviesStateInitial value)? initial,
    TResult Function(MoviesStateLoading value)? loading,
    TResult Function(MoviesStateSuccess value)? success,
    TResult Function(MoviesStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesStateInitial value)? initial,
    TResult Function(MoviesStateLoading value)? loading,
    TResult Function(MoviesStateSuccess value)? success,
    TResult Function(MoviesStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesStateCopyWith<$Res> {
  factory $MoviesStateCopyWith(
          MoviesState value, $Res Function(MoviesState) then) =
      _$MoviesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoviesStateCopyWithImpl<$Res> implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._value, this._then);

  final MoviesState _value;
  // ignore: unused_field
  final $Res Function(MoviesState) _then;
}

/// @nodoc
abstract class _$$MoviesStateInitialCopyWith<$Res> {
  factory _$$MoviesStateInitialCopyWith(_$MoviesStateInitial value,
          $Res Function(_$MoviesStateInitial) then) =
      __$$MoviesStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MoviesStateInitialCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res>
    implements _$$MoviesStateInitialCopyWith<$Res> {
  __$$MoviesStateInitialCopyWithImpl(
      _$MoviesStateInitial _value, $Res Function(_$MoviesStateInitial) _then)
      : super(_value, (v) => _then(v as _$MoviesStateInitial));

  @override
  _$MoviesStateInitial get _value => super._value as _$MoviesStateInitial;
}

/// @nodoc

class _$MoviesStateInitial extends MoviesStateInitial {
  _$MoviesStateInitial() : super._();

  @override
  String toString() {
    return 'MoviesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MoviesStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies) success,
    required TResult Function(Failure? failure) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? success,
    TResult Function(Failure? failure)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? success,
    TResult Function(Failure? failure)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesStateInitial value) initial,
    required TResult Function(MoviesStateLoading value) loading,
    required TResult Function(MoviesStateSuccess value) success,
    required TResult Function(MoviesStateFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoviesStateInitial value)? initial,
    TResult Function(MoviesStateLoading value)? loading,
    TResult Function(MoviesStateSuccess value)? success,
    TResult Function(MoviesStateFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesStateInitial value)? initial,
    TResult Function(MoviesStateLoading value)? loading,
    TResult Function(MoviesStateSuccess value)? success,
    TResult Function(MoviesStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MoviesStateInitial extends MoviesState {
  factory MoviesStateInitial() = _$MoviesStateInitial;
  MoviesStateInitial._() : super._();
}

/// @nodoc
abstract class _$$MoviesStateLoadingCopyWith<$Res> {
  factory _$$MoviesStateLoadingCopyWith(_$MoviesStateLoading value,
          $Res Function(_$MoviesStateLoading) then) =
      __$$MoviesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MoviesStateLoadingCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res>
    implements _$$MoviesStateLoadingCopyWith<$Res> {
  __$$MoviesStateLoadingCopyWithImpl(
      _$MoviesStateLoading _value, $Res Function(_$MoviesStateLoading) _then)
      : super(_value, (v) => _then(v as _$MoviesStateLoading));

  @override
  _$MoviesStateLoading get _value => super._value as _$MoviesStateLoading;
}

/// @nodoc

class _$MoviesStateLoading extends MoviesStateLoading {
  _$MoviesStateLoading() : super._();

  @override
  String toString() {
    return 'MoviesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MoviesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies) success,
    required TResult Function(Failure? failure) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? success,
    TResult Function(Failure? failure)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? success,
    TResult Function(Failure? failure)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesStateInitial value) initial,
    required TResult Function(MoviesStateLoading value) loading,
    required TResult Function(MoviesStateSuccess value) success,
    required TResult Function(MoviesStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoviesStateInitial value)? initial,
    TResult Function(MoviesStateLoading value)? loading,
    TResult Function(MoviesStateSuccess value)? success,
    TResult Function(MoviesStateFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesStateInitial value)? initial,
    TResult Function(MoviesStateLoading value)? loading,
    TResult Function(MoviesStateSuccess value)? success,
    TResult Function(MoviesStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MoviesStateLoading extends MoviesState {
  factory MoviesStateLoading() = _$MoviesStateLoading;
  MoviesStateLoading._() : super._();
}

/// @nodoc
abstract class _$$MoviesStateSuccessCopyWith<$Res> {
  factory _$$MoviesStateSuccessCopyWith(_$MoviesStateSuccess value,
          $Res Function(_$MoviesStateSuccess) then) =
      __$$MoviesStateSuccessCopyWithImpl<$Res>;
  $Res call({List<MovieEntity> movies});
}

/// @nodoc
class __$$MoviesStateSuccessCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res>
    implements _$$MoviesStateSuccessCopyWith<$Res> {
  __$$MoviesStateSuccessCopyWithImpl(
      _$MoviesStateSuccess _value, $Res Function(_$MoviesStateSuccess) _then)
      : super(_value, (v) => _then(v as _$MoviesStateSuccess));

  @override
  _$MoviesStateSuccess get _value => super._value as _$MoviesStateSuccess;

  @override
  $Res call({
    Object? movies = freezed,
  }) {
    return _then(_$MoviesStateSuccess(
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>,
    ));
  }
}

/// @nodoc

class _$MoviesStateSuccess extends MoviesStateSuccess {
  _$MoviesStateSuccess({required this.movies}) : super._();

  @override
  final List<MovieEntity> movies;

  @override
  String toString() {
    return 'MoviesState.success(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesStateSuccess &&
            const DeepCollectionEquality().equals(other.movies, movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movies));

  @JsonKey(ignore: true)
  @override
  _$$MoviesStateSuccessCopyWith<_$MoviesStateSuccess> get copyWith =>
      __$$MoviesStateSuccessCopyWithImpl<_$MoviesStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies) success,
    required TResult Function(Failure? failure) failed,
  }) {
    return success(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? success,
    TResult Function(Failure? failure)? failed,
  }) {
    return success?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? success,
    TResult Function(Failure? failure)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesStateInitial value) initial,
    required TResult Function(MoviesStateLoading value) loading,
    required TResult Function(MoviesStateSuccess value) success,
    required TResult Function(MoviesStateFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoviesStateInitial value)? initial,
    TResult Function(MoviesStateLoading value)? loading,
    TResult Function(MoviesStateSuccess value)? success,
    TResult Function(MoviesStateFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesStateInitial value)? initial,
    TResult Function(MoviesStateLoading value)? loading,
    TResult Function(MoviesStateSuccess value)? success,
    TResult Function(MoviesStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MoviesStateSuccess extends MoviesState {
  factory MoviesStateSuccess({required final List<MovieEntity> movies}) =
      _$MoviesStateSuccess;
  MoviesStateSuccess._() : super._();

  List<MovieEntity> get movies;
  @JsonKey(ignore: true)
  _$$MoviesStateSuccessCopyWith<_$MoviesStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoviesStateFailedCopyWith<$Res> {
  factory _$$MoviesStateFailedCopyWith(
          _$MoviesStateFailed value, $Res Function(_$MoviesStateFailed) then) =
      __$$MoviesStateFailedCopyWithImpl<$Res>;
  $Res call({Failure? failure});
}

/// @nodoc
class __$$MoviesStateFailedCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res>
    implements _$$MoviesStateFailedCopyWith<$Res> {
  __$$MoviesStateFailedCopyWithImpl(
      _$MoviesStateFailed _value, $Res Function(_$MoviesStateFailed) _then)
      : super(_value, (v) => _then(v as _$MoviesStateFailed));

  @override
  _$MoviesStateFailed get _value => super._value as _$MoviesStateFailed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$MoviesStateFailed(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$MoviesStateFailed extends MoviesStateFailed {
  _$MoviesStateFailed({required this.failure}) : super._();

  @override
  final Failure? failure;

  @override
  String toString() {
    return 'MoviesState.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesStateFailed &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$MoviesStateFailedCopyWith<_$MoviesStateFailed> get copyWith =>
      __$$MoviesStateFailedCopyWithImpl<_$MoviesStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies) success,
    required TResult Function(Failure? failure) failed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? success,
    TResult Function(Failure? failure)? failed,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? success,
    TResult Function(Failure? failure)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesStateInitial value) initial,
    required TResult Function(MoviesStateLoading value) loading,
    required TResult Function(MoviesStateSuccess value) success,
    required TResult Function(MoviesStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoviesStateInitial value)? initial,
    TResult Function(MoviesStateLoading value)? loading,
    TResult Function(MoviesStateSuccess value)? success,
    TResult Function(MoviesStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesStateInitial value)? initial,
    TResult Function(MoviesStateLoading value)? loading,
    TResult Function(MoviesStateSuccess value)? success,
    TResult Function(MoviesStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class MoviesStateFailed extends MoviesState {
  factory MoviesStateFailed({required final Failure? failure}) =
      _$MoviesStateFailed;
  MoviesStateFailed._() : super._();

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$MoviesStateFailedCopyWith<_$MoviesStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
