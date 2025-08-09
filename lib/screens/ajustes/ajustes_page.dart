import 'package:flutter/material.dart';
import 'package:medtour/config/theme_config.dart';

class AjustesPage extends StatelessWidget {
  const AjustesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ajustes',style: Tema().titleStyle(),),centerTitle: true,),
    );
  }
}