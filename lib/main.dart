import 'package:flutter/material.dart';
import 'package:flutter_tut1/pages/home_page.dart';
import 'package:flutter_tut1/pages/login_page.dart';
import 'package:flutter_tut1/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const Login(),
      // initialRoute: "/home",
      routes: {
        "/home": (context) => const HomePgae(),
        "/login": (context) => const Login(),
        "/signup": (context) => const SignUp(),
      },
    );
  }
}
