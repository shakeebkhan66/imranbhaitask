import 'package:flutter/material.dart';

import 'homepage.dart';
import 'homescreen.dart';
import 'original_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Task',
      home: OriginalScreen(),
    );
  }
}
