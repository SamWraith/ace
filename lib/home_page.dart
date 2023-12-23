import 'package:ace/pallete.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.whiteColor,
        title: const Text("Ace"),
        centerTitle: true,
        leading: const Icon(Icons.menu),
      ),
      body: const Center(
        child: Text("Hello World"),
      ),
    );
  }
}
