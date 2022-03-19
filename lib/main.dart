import 'dart:math';

import 'package:flutter/material.dart';
import 'main_page.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // callback method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: LoginPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key) {}

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kimi no nawa"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bye Bye',
                style: TextStyle(fontSize: 70.0, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}