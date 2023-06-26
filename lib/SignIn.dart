import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        backgroundColor: const Color(0xff07757d),
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).go('/');
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        toolbarTextStyle: const TextStyle(
          color: Colors.white,
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
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
                // Perform sign in logic here
              },
              child: const Text('Sign In'),
            ),
            const SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).go('/SignUp');
              },
              child: const Text(
                "Don't have an account ? Sign Up",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
