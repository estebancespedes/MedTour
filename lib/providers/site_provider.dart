import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:medtour/providers/assets_dir.dart';

class Lugar{
  final String nombre;
  final String descripcion;
  final String prev;
  final String img1;
  final String img2;
  final String img3;
  final String img4;

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
      prev: json['prev'] as String,
      img1: json['img1'] as String,
      img2: json['img2'] as String,
      img3: json['img3'] as String,
      img4: json['img4'] as String,
    );
  }
}

Future <List<Lugar>> loadLugares() async{
  final String jsonString =await rootBundle.loadString(Direcciones().datasites);
  final List<dynamic> jsonList = jsonDecode(jsonString);
  final List<Lugar> lugares = jsonList.map((json)=> Lugar.fromJson(json)).toList();
  return lugares;
}