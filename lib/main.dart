import 'package:flutter/material.dart';
import './pages/intropage.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.bottom]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFB999EF),
        scaffoldBackgroundColor: Color(0xFFFEFEFE),
        accentColor: Colors.grey,
        textTheme: TextTheme(
          title: TextStyle(
              color: Color(0xFFFEFEFE),
              fontSize: 45,
              fontWeight: FontWeight.bold,
              letterSpacing: 14,
            ),
            subtitle: TextStyle(
              color: Color(0xFFFEFEFE),
              fontSize: 20,
              letterSpacing: 3,
            ),
            body1: TextStyle(
              color: Color(0xFFFEFEFE),
              fontSize: 18,
              letterSpacing: 0.5,
            ),
            body2: TextStyle(
              color: Colors.black,
              fontSize: 20,
              letterSpacing: 5,
            ),
            display1: TextStyle(
              color: Colors.black87,
              fontSize: 18,
              letterSpacing: 1.5,
              wordSpacing: 2,
              height: 1.5,
              fontWeight: FontWeight.bold
            ),
            display2: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              letterSpacing: 0.5,
            ),
            display3: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              letterSpacing: 0.5,
            ),
            display4: TextStyle(
              color: Colors.grey[600],
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),
        ),
        iconTheme: IconThemeData(
          color: Colors.grey,
          size: 25,
        )
      ),
      routes: {
        '/':(BuildContext context) => IntroPage()
      },
    );
  }
}
