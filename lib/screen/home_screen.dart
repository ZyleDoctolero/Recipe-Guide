import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe Guide"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/add_recipe'),
              child: const Text("Add Recipe"))),
    );
  }
}
