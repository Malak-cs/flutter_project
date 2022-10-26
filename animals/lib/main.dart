import 'package:animals/views/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Animals',
      debugShowCheckedModeBanner: false,
      home: PageHome(),
    );
  }
}
