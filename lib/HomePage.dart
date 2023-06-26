import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to application MFT',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Perform sign up logic here
              },
              child: const Text('Sign up'),
            ),
            const SizedBox(height: 16.0),
            OutlinedButton(
              onPressed: () {
                GoRouter.of(context).go('/LoginPage');
              },
              child: const Text('Sign in'),
            ),
          ],
        ),
      ),
    );
  }
}
