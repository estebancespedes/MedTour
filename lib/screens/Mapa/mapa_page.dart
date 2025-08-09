import 'package:flutter/material.dart';
import 'package:medtour/config/theme_config.dart';

class MapaPage extends StatelessWidget {
  const MapaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mapa',style: Tema().titleStyle(),),),
    );
  }
}