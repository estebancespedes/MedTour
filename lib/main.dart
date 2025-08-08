import 'package:flutter/material.dart';

import 'package:medtour/config/init_selecter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitSelecter(),
    );
  }
}