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
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 64.0,
                backgroundImage: AssetImage('images/ashishpatel.jpg'),
              ),
              Text(
                'Ashish Patel',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 32.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.tealAccent,
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(
                height: 16.0,
                width: 144.0,
                child: Divider(
                  color: Colors.tealAccent,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal[700],
                    ),
                    title: Text(
                      '+91 8999205770',
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal[700],
                    ),
                    title: Text(
                      'ashishpatel9119@hotmail.com',
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Row(
// children: <Widget>[
// Icon(
// Icons.phone,
// color: Colors.teal[700],
// ),
// SizedBox(
// width: 16.0,
// ),
// Text(
// '+91 8999205770',
// style: TextStyle(
// color: Colors.teal[900],
// fontWeight: FontWeight.bold,
// fontSize: 16.0,
// ),)
// ],
// )
