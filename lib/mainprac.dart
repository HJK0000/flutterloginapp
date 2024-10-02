import 'package:flutter/material.dart';
import 'package:loginapp/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text("LoginPage");
  }
}

