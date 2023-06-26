import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mft/SignUp.dart';
import 'HomePage.dart';
import 'SignIn.dart';

final _router = GoRouter(routes: [
  GoRoute(
    path: '/',
    pageBuilder: (context, state) => const MaterialPage(child: HomePage()),
  ),
  GoRoute(
      path: '/SignIn',
      pageBuilder: (context, state) => const MaterialPage(child: SignIn())),
  GoRoute(
    path: '/SignUp',
    pageBuilder: (context, state) => const MaterialPage(child: SignUp()),
  )
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
