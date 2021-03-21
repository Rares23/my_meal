import 'package:flutter/material.dart';
import 'package:my_meal/home/pages/home_page.dart';
import 'package:my_meal/utils/strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: Strings.appTitle),
    );
  }
}
