import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Material(
      // ignore: prefer_const_constructors
      child: Center(
        child: const Text(
          "login page",
          style: TextStyle(
            fontSize: 40,
            color: Colors.blue,
          ),
          overflow: TextOverflow.fade,
        ),
      ),
    );
  }
}
