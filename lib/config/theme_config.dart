import 'package:flutter/material.dart';

class Tema{
  
  Brightness tema = Brightness.dark;
  Color color = Color.fromARGB(161, 13, 244, 144);

  ThemeData themeData (){
    return ThemeData(
      colorSchemeSeed:color,
      brightness: tema,
    );
  }
}