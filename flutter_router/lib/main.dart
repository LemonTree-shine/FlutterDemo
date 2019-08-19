
import 'package:flutter/material.dart';
import './pages/FirstPage.dart';
import './pages/SecondPage.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FirstPage(),
    );
  }
}