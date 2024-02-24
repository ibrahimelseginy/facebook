import 'package:facebook/home_screen.dart';
import 'package:facebook/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FaceBook());
}

class FaceBook extends StatelessWidget {
  const FaceBook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
      },
      initialRoute: LoginScreen.routeName,
    );
  }
}
