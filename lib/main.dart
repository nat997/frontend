import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'LoginPage.dart';

final _router = GoRouter(routes: [
  GoRoute(
      path: '/',
      pageBuilder: (context, state) => const MaterialPage(child: LoginPage())),
]);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
