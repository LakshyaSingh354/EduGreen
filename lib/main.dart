import 'package:flutter/material.dart';
import 'package:sih_app/views/home_page.dart';
import 'package:sih_app/views/login_signup_view.dart';
import 'package:sih_app/views/welcome_screen.dart';
import 'constants/routes.dart';
import 'services/auth/auth_service.dart';
import 'views/login_view.dart';
import 'views/register_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      // title: 'SIH App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const Main(),
      routes: {
        introRoute: (context) => IntroScreen(context),
        loginRoute: (context) => const LoginView(),
        registerRoute: (context) => const RegisterView(),
        homeRoute: (context) => const HomePage(),
      }
    )
      );
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AuthService.firebase().initialize(),
      builder: ((context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
          final user = AuthService.firebase().currentUser;
          return LoginView();
          // if (user != null) {
          //   return const HomePage();
          // } else {
          //   return const LoginView();
          // }
          default:
          return const CircularProgressIndicator();
        }
        
      })
      );
  }
}