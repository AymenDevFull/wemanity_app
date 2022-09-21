// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieEntity _$MovieEntityFromJson(Map<String, dynamic> json) => MovieEntity(
      title: json['title'] as String,
      year: json['year'] as int,
      director: json['director'] as String,
      posterUrl: json['posterUrl'] as String,
    );

Map<String, dynamic> _$MovieEntityToJson(MovieEntity instance) =>
    <String, dynamic>{
      'title': instance.title,
      'year': instance.year,
      'director': instance.director,
      'posterUrl': instance.posterUrl,
    };
