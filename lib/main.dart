import 'package:flutter/material.dart';
import 'package:news_wordpress_app/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetX News App',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.cyan[600]
      ),
      home: HomePage(),
    );
  }
}
