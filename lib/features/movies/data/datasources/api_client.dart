import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wemanity_app/features/movies/data/models/movie_model.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/movies")
  Future<List<MovieModel>> getMovies();
}
