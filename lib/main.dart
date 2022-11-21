import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_signin/pages/page1.dart';
import 'package:navigation_signin/pages/page2.dart';

void main() {
  runApp(MyApp());
}

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => Page1(),
  ),
  GoRoute(
    path: '/page2',
    builder: (context, state) => Page2(name: state.extra as String),
  )
]);

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
