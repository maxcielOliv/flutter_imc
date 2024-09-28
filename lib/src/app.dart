import 'package:flutter/material.dart';
import 'package:flutter_imc/src/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData();
    return MaterialApp(
      theme: tema.copyWith(
        colorScheme: tema.colorScheme.copyWith(
          primary: Colors.teal,
          secondary: Colors.teal[200],
        ),
        textTheme: tema.textTheme.copyWith(
          titleLarge: const TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        primaryColor: Colors.teal,
      ),
      home: const HomePage(),
    );
  }
}
