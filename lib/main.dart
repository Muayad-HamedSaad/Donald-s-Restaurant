import 'package:flutter/material.dart';
import 'Domains.dart';
import 'Donalds.dart';
import 'MegaDeal.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Page',
      home: Donalds(),
    );
  }
}
