import 'package:flutter/material.dart';
import 'package:medtour/config/theme_config.dart';

class ExplorarPage extends StatelessWidget {
  const ExplorarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Explorar',style: Tema().titleStyle(),)),
    );
  }
}