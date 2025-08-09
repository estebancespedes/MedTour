import 'package:flutter/material.dart';
import 'package:medtour/config/theme_config.dart';

class EventosPage extends StatelessWidget {
  const EventosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Eventos',style: Tema().titleStyle(),),centerTitle: true,),
    );
  }
}