import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wemanity_app/features/movies/domain/entities/movie_entity.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel extends MovieEntity {
  final String title;
  final int year;
  final String director;
  final String posterUrl;

  MovieModel({
    required this.title,
    required this.year,
    required this.director,
    required this.posterUrl,
  }) : super(
          title: title,
          year: year,
          director: director,
          posterUrl: posterUrl,
        );
  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}
