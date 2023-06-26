import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        backgroundColor:
            const Color(0xff07757d), // update appbar background color
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).go('/');
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        toolbarTextStyle: const TextTheme(
          titleLarge: TextStyle(color: Colors.white), // update text color
        ).bodyMedium,
        titleTextStyle: const TextTheme(
          titleLarge: TextStyle(color: Colors.white), // update text color
        ).titleLarge,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Perform login logic here
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
