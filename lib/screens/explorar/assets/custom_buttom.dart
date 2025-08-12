import 'package:flutter/material.dart';
import 'package:medtour/config/theme_config.dart';
import 'package:medtour/providers/site_provider.dart';
import 'package:medtour/screens/explorar/assets/custom_site_screen.dart';

class CustomButtom extends StatelessWidget {
  final Lugar obj;

  const CustomButtom({super.key, 
    required this.obj
  });

  @override
  Widget build(BuildContext context) {

    return MaterialButton(
      padding: EdgeInsetsGeometry.all(10),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SiteScreen(lugar: obj)));
      },
      child: Column(
        spacing: 10,
        children: [
          SizedBox(
            width: 150,
            height: 150,
            child: obj.prev,
          ),
          Text(obj.nombre,style: Tema().textStyle(),)
        ],
      ),
    );
  }
}