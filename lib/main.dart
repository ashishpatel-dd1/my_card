import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _AnimatedProfileScreen(),
    );
  }
}

class _AnimatedProfileScreen extends StatefulWidget {
  @override
  _AnimatedProfileScreenState createState() => _AnimatedProfileScreenState();
}

class _AnimatedProfileScreenState extends State<_AnimatedProfileScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _slideAnimation = Tween<Offset>(begin: Offset(0, 0.3), end: Offset.zero)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: 72.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ScaleTransition(
                  scale: _scaleAnimation,
                  child: CircleAvatar(
                    radius: 64.0,
                    backgroundImage: AssetImage('images/ashishpatel.jpg'),
                  ),
                ),
                SizedBox(height: 12.0),
                FadeTransition(
                  opacity: _fadeAnimation,
                  child: Text(
                    'Ashish Patel',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 32.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.5,
                    ),
                  ),
                ),
                FadeTransition(
                  opacity: _fadeAnimation,
                  child: Text(
                    'FLUTTER, ML, LINUX',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.cyanAccent,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                  width: 144.0,
                  child: Divider(color: Colors.tealAccent),
                ),
                SlideTransition(
                  position: _slideAnimation,
                  child: Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
                    child: ListTile(
                      leading: Icon(Icons.phone, color: Colors.teal[700]),
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
                SlideTransition(
                  position: _slideAnimation,
                  child: Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
                    child: ListTile(
                      leading: Icon(Icons.email, color: Colors.teal[700]),
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
                ),
                SizedBox(
                  height: 16.0,
                  width: 144.0,
                  child: Divider(color: Colors.tealAccent),
                ),
              ],
            ),
            SizedBox(height: 144.0),
            FadeTransition(
              opacity: _fadeAnimation,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.copyright, size: 16.0, color: Colors.white),
                  SizedBox(width: 4.0),
                  Text(
                    'SOEUQINU.ORG (2025)',
                    style: TextStyle(color: Colors.white, fontSize: 14.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
