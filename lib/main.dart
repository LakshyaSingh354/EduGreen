import 'package:flutter/material.dart';
import 'package:sih_app/views/introductory_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Introduction(),
    ));
    routes: {
        introRoute: (context) => const Introduction();
      }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
    );
  }
}