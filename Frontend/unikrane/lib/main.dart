import 'package:flutter/material.dart';
import 'package:unikrane/views/categories.dart';
import 'package:unikrane/views/radarPage.dart';
import 'package:unikrane/views/what.dart';
import 'package:unikrane/views/homepage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case '/':
          return MaterialPageRoute(builder: (context) => MyApp());
        case '/home':
          return MaterialPageRoute(builder: (context) => Home());
        case '/what':
          return MaterialPageRoute(builder: (context) => What());
        case '/categories':
          return MaterialPageRoute(builder: (context) => Categories());
        case '/radar':
          return MaterialPageRoute(builder: (context) => SignSwiperPage());
      }
    },
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 4),
      () => Navigator.pushReplacementNamed(context, '/home'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),

        decoration: BoxDecoration(color: Color(0xffFEE704)),
        // child: Image.asset('assets/images/logo.png'),
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/unikrane_logo.png"),
              width: 280,
              height: 280,
            ),
          ],
        ),
      ),
    );
  }
}
