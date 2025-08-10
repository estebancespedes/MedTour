import 'package:flutter/material.dart';
import 'package:medtour/config/theme_config.dart';

class SiteScreen extends StatelessWidget {
  final String lugar;
  const SiteScreen({super.key, required this.lugar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(lugar,style: Tema().titleStyle(),),),
    );
  }
}