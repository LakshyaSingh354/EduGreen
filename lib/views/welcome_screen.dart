import 'package:flutter/material.dart';
import 'package:sih_app/constants/routes.dart';
import 'dart:async';

import 'package:sih_app/views/login_signup_view.dart';

class IntroScreen extends StatelessWidget {
  final BuildContext context;
  IntroScreen(this.context) {
    Timer(
      Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LogSignIn()),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/welcome_screen.png'),
      ),
    );
  }
}


  



