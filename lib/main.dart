import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';
import 'package:wemanity_app/core/network/client.dart';
import 'package:wemanity_app/core/network/config.dart';
import 'package:wemanity_app/features/movies/data/datasources/api_client.dart';
import 'package:wemanity_app/features/movies/presentation/pages/movie_details_page.dart';
import 'package:wemanity_app/features/movies/presentation/pages/movies_page.dart';
import 'package:wemanity_app/main_providers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final Dio dio = DioBuilder().addApiInfoProvider().build();
  final apiClient = ApiClient(
    dio,
    baseUrl: Config.url,
  );
  runApp(MyApp(
    apiClient: apiClient,
  ));
}

class MyApp extends StatelessWidget {
  final ApiClient apiClient;
  const MyApp({
    required this.apiClient,
    Key? key,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MainProviders(
      apiClient: apiClient,
      child: Builder(
        builder: (context) => VRouter(
          mode: VRouterMode.history,
          title: 'WEMANITY APP',
          theme: Theme.of(context),
          color: Colors.white,
          routes: [
            VRouteRedirector(path: '/', redirectTo: '/movies'),
            VGuard(
              stackedRoutes: [
                VWidget(
                  path: '/movies',
                  widget: MoviesPage(),
                  stackedRoutes: [
                    VGuard(
                      stackedRoutes: [
                        VWidget(
                          path: '/movies/detail/:title',
                          widget: MovieDetailsPage(),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
