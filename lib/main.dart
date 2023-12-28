import 'package:flutter/material.dart';
import 'package:our_app/screens/splash_services/splash_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const SplashServicesScreen(),
    );
  }
}
