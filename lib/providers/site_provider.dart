import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:medtour/providers/assets_dir.dart';

class Lugar{
  final String nombre;
  final String descripcion;
  final Image prev;
  final Image img1;
  final Image img2;
  final Image img3;
  final Image img4;

  const Lugar({
    required this.nombre,
    required this.descripcion,
    required this.prev,
    required this.img1,
    required this.img2,
    required this.img3,
    required this.img4
  });
  
  factory Lugar.fromJson(Map<String,dynamic> json){
    return Lugar(
      nombre: json['Lugar'] as String,
      descripcion: json['Descripcion']as String,
      prev: Image.asset(json['prev'] as String),
      img1: Image.asset(json['img1'] as String),
      img2: Image.asset(json['img2'] as String),
      img3: Image.asset(json['img3'] as String),
      img4: Image.asset(json['img4'] as String),
    );
  }
}

Future <List<Lugar>> loadLugares() async{
  final String jsonString =await rootBundle.loadString(Direcciones().datasites);
  final List<dynamic> jsonList = jsonDecode(jsonString);
  final List<Lugar> lugares = jsonList.map((json)=> Lugar.fromJson(json)).toList();
  return lugares;
}