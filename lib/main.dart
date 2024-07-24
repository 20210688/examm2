import 'package:flutter/material.dart';
import 'package:examm2/home.dart';
import 'package:examm2/home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(context)=> HomeScreen(),
      },

    );

  }
}