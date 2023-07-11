import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:poc_nested_navigation/routes.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
List<Route<dynamic>> routeStack = [];

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Nested Navigation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: Routes().router,
      // routerDelegate: Routes().router.routerDelegate,
      // routeInformationParser: Routes().router.routeInformationParser,
      // routeInformationProvider: Routes().router.routeInformationProvider,
    );
  }
}
