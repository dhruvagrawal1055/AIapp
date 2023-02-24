import 'package:flutter/material.dart';
import 'package:your_own_ai/Screens/route.dart';
import 'package:your_own_ai/openAi/ImageGeneration/image_apicall.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    String image = '';
    var isloaded = false;
    return MaterialApp(
      home: Home(),
    );
  }
}