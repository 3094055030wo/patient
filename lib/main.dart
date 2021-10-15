import 'package:flutter/material.dart';
import 'Home/Header/Header_tab_sea_in.dart';
// ignore: unused_import
import 'Home/Sign_in/Sign_in.dart';
// ignore: unused_import
import 'Home/Sign_in/zuche.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TabBar Demo',
      routes: {
        '/': (context) => Luyou(),
      },
    );
  }
}
