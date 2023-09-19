import 'package:flutter/material.dart';
import 'package:sih_app/views/home_page.dart';
import 'package:sih_app/views/introductory_screen.dart';

import 'constants/routes.dart';
import 'views/login_view.dart';
import 'views/register_view.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Introduction(),
      routes: {
        introRoute: (context) => const Introduction(),
        loginRoute: (context) => const LoginView(),
        registerRoute: (context) => const RegisterView(),
        homeRoute: (context) => const HomePage(),
      }
    ));
    
}

