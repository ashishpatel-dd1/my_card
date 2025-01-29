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
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 64.0,
                backgroundImage: AssetImage('images/ashishpatel.jpg'),
                ),
              Text('Ashish Patel',
                style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),)
            ],
          ),
        ),
      ),
    );
  }
}