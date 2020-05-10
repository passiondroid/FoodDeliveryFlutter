import 'package:delivery/homepage.dart';
import 'package:flutter/material.dart';
import 'landingpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => LandingPage(),
        HomePage.routeName: (context) => HomePage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Poppins",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

