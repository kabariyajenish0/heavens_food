import 'package:flutter/material.dart';
import 'package:heavens_food/page1.dart';
import 'package:heavens_food/page2.dart';
import 'package:heavens_food/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Page1(),
    );
  }
}
