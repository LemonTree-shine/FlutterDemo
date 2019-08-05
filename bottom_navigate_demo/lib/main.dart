import 'package:flutter/material.dart';
import './pages/bottom_navigate.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BottomNavigationBarList(
        currentIndex: 0,
      ),
    );
  }
}