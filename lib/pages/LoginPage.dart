import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hungry_busters/BottomNavigationBar.dart';
import 'package:hungry_busters/styles/ButtonStyle.dart';
import 'package:hungry_busters/styles/Colors.dart';
import 'package:hungry_busters/styles/TextStyle.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(height: 50),
              Image.asset('assets/logo.png'),
              const LoginForm()
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          controller: _emailController,
          decoration: const InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(color: red),
              hintText: 'Email'),
        ),
        const SizedBox(height: 20.0),
        TextFormField(
          controller: _passwordController,
          obscureText: true,
          decoration: const InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(color: red),
              hintText: 'Password'),
        ),
        const SizedBox(height: 20.0),
        const Text('forgot password?', style: description),
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            // String email = _emailController.text.trim();
            // String password = _passwordController.text.trim();
            // print('Email: $email, Password: $password');
            Get.to(() => const BottomNav());
          },
          style: buttonStyle,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 10.0),
            child: Text('Sign In', style: buttonText),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Text('or', style: description),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: null,
              child: const Image(
                image: AssetImage('assets/google.png'),
                height: 50,
                width: 50,
              ),
            ),
            const SizedBox(
              width: 60.0,
            ),
            GestureDetector(
              onTap: null,
              child: const Image(
                image: AssetImage('assets/facebook.png'),
                height: 50,
                width: 50,
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () {},
          child: const Text('Don\'t have an account? Sign Up',
              style: TextStyle(
                  color: red,
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2.0,
                  decorationColor: red)),
        )
      ],
    );
  }

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
