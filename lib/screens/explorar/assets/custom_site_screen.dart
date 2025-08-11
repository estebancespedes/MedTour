import 'package:flutter/material.dart';
import 'package:medtour/config/theme_config.dart';
import 'package:medtour/providers/site_provider.dart';

class SiteScreen extends StatelessWidget {
  final Lugar lugar;
  const SiteScreen({super.key, required this.lugar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(lugar.nombre, style: Tema().titleStyle(),textAlign: TextAlign.center,),forceMaterialTransparency: true),
      body: ListView(
        children: [
          SizedBox(
            height: 300,
            child:ListView(
              scrollDirection: Axis.horizontal,
              children: [
                lugar.img1,
                lugar.img2,
                lugar.img3,
                lugar.img4,
              ],
            ),
          ),
          SizedBox(height: 10,),
          Text('Descripcion',style: Tema().subTitleStyle(),),
          SizedBox(height: 5,),
          Text(lugar.descripcion, style: Tema().textStyle(),)
        ],
      )
    );
  }
}