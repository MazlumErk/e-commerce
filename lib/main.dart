import 'package:e_commerce/Pages/HomePage.dart';
import 'package:e_commerce/Pages/ProductUnavailablePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => const HomePage(),
        '/productunavailable': (context) => const ProductUnavailablePage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 17, 17, 17),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 17, 17, 17),
          shadowColor: Colors.transparent
        ),
      ),
      home: const HomePage(),
    );
  }
}