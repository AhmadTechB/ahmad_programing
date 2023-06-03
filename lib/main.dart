import 'package:ahmad_practices/forget_password_ui.dart';
import 'package:ahmad_practices/login.dart';
import 'package:ahmad_practices/signup_screen/onboarding_screen/screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GetApiCall(),

    );
  }
}