import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hungry_busters/pages/LoginPage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Delayed navigation to home screen
    Future.delayed(const Duration(seconds: 5), () {
      Get.off(const LoginPage());
    });

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Image(image: AssetImage('assets/logo.png'))),
      ),
    );
  }
}
