import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[300],
        body: SafeArea(
          child: Container(
            height: 100.0,
            width: 100.0,
            padding: EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 4.0),
            margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
            color: Colors.white,
            child: Text('hello'),
          ),
        ),
      ),
    );
  }
}