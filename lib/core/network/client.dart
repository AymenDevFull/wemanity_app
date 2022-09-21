import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

class DioBuilder {
  DioBuilder addApiInfoProvider() {
    return this;
  }

  Dio build() {
    final Dio dio = Dio();

    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) async {
          options.headers
            ..putIfAbsent(
                HttpHeaders.contentTypeHeader, () => "application/json");
          return handler.next(options);
        },
      ),
    );

    if (!kIsWeb) {
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
    }

    return dio;
  }
}
