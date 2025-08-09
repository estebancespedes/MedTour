import 'package:flutter/material.dart';
import 'package:medtour/config/theme_config.dart';
import 'package:medtour/screens/explorar/assets/custom_buttom.dart';

class ExplorarPage extends StatelessWidget {
  const ExplorarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Explorar',style: Tema().titleStyle(),),centerTitle: true,),
      body: ListView(
        padding: EdgeInsets.all(7),
        children: [
          Text('Lugares por visitar',style: Tema().subTitleStyle(),),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CustomButtom(imagen: Image.asset('lib/screens/explorar/assets/images/comuna_13_img.png'),lugar: 'comuna 13',),
                CustomButtom(imagen: Image.asset('lib/screens/explorar/assets/images/guatape_img.png'),lugar: 'Guatape',),
                CustomButtom(imagen: Image.asset('lib/screens/explorar/assets/images/plaza_botero_img.png'), lugar: 'Plaza Botero'),
              ],
            ),
          )
        ],
      ),
    );
  }
}