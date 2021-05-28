import 'package:flutter/material.dart';
import 'package:tlwc_app/home.dart';
import 'package:tlwc_app/onboarding.dart';
import 'package:tlwc_app/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // title: 'Flutter Demo',
      // theme: ThemeData(
      
      //   // is not restarted.
      //   primarySwatch: Colors.white12,
    // ),
      home: LoadingScreen(),
    );
  }
}

