import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_entity.g.dart';

@JsonSerializable()
class MovieEntity {
  final String title;
  final int year;
  final String director;
  final String posterUrl;

  MovieEntity({
    required this.title,
    required this.year,
    required this.director,
    required this.posterUrl,
  });

  factory MovieEntity.fromJson(Map<String, dynamic> json) =>
      _$MovieEntityFromJson(json);
  Map<String, dynamic> toJson() => _$MovieEntityToJson(this);
}
