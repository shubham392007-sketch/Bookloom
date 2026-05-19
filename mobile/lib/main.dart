import 'package:flutter/material.dart';
import 'package:bookloom/core/theme.dart';
import 'package:bookloom/features/splash/splash_screen.dart';

void main() {
  runApp(const BookLoomApp());
}

class BookLoomApp extends StatelessWidget {
  const BookLoomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookLoom',
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

