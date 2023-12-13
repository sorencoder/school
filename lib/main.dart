import 'package:flutter/material.dart';
import 'package:school/consts/colors.dart';
import 'package:school/screens/homepage.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
          appBarTheme: const AppBarTheme(color: bgColors, elevation: 0)),
    );
  }
}
