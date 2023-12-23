import 'package:flutter/material.dart';
import 'package:our_app/screens/registration/registration_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      home: const RegistrationScreen(),
    );
  }
}

