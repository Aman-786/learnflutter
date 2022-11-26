import 'package:flutter/material.dart';

class HomePgae extends StatefulWidget {
  const HomePgae({super.key});

  @override
  State<HomePgae> createState() => _HomePgaeState();
}

class _HomePgaeState extends State<HomePgae> {
  String str = "world";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Home aman"),
        ),
      ),
      body: Center(
        child: Text("hello $str"),
      ),
      drawer: Drawer(),
    );
  }
}
