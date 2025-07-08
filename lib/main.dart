import 'package:flutter/material.dart';
import 'main_page/header_field.dart';
import 'main_page/main_content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: const [
            HeaderField(),
            MainContent(),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}