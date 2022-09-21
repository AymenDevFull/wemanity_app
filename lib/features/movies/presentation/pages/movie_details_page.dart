import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:wemanity_app/features/movies/domain/entities/movie_entity.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _historyStateMovie = context.vRouter.historyState['movie'];
    final movie = _historyStateMovie != null
        ? MovieEntity.fromJson(
            jsonDecode(_historyStateMovie) as Map<String, dynamic>,
          )
        : null;
    return Scaffold(
      appBar: AppBar(
        title: Text("MOVIE DETAIL"),
      ),
      body: BodyDetail(
        movie: movie,
      ),
    );
  }
}

class BodyDetail extends StatelessWidget {
  final MovieEntity? movie;
  const BodyDetail({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: movie == null
          ? Text(
              "Error to load movie detail",
            )
          : Column(
              children: [
                Container(
                  child: movie?.posterUrl != null
                      ? Image.network(
                          movie?.posterUrl ?? "",
                        )
                      : WebsafeSvg.asset(
                          'assets/images/wemanity.svg',
                        ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Text(
                    'title : ${movie?.title ?? "unavailable"}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "year : ${movie?.year ?? "unavailable"}",
                    style: const TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "director : ${movie?.director ?? "unavailable"}",
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
