import 'package:flutter/material.dart';
import 'package:medtour/config/theme_config.dart';
import 'package:medtour/screens/explorar/assets/custom_site_screen.dart';

class CustomButtom extends StatelessWidget {
  final Image imagen;
  final String lugar;

  const CustomButtom({super.key, 
    required this.imagen, 
    required this.lugar,
  });

  @override
  Widget build(BuildContext context) {

    return MaterialButton(
      padding: EdgeInsetsGeometry.all(10),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SiteScreen(lugar: lugar)));
      },
      child: Column(
        spacing: 10,
        children: [
          Container(
            color: Colors.amber,
            width: 150,
            height: 150,
            child: imagen,
          ),
          Text(lugar,style: Tema().textStyle(),)
        ],
      ),
    );
  }
}