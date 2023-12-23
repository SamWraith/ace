import 'package:ace/home_page.dart';
import 'package:ace/pallete.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ace",
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Pallete.whiteColor,
      ),
      home: const HomePage(),
    );
  }
}
