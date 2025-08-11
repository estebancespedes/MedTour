import 'package:flutter/material.dart';
import 'package:medtour/config/theme_config.dart';
import 'package:medtour/screens/explorar/assets/custom_site_buttons.dart';

class ExplorarPage extends StatelessWidget {
  const ExplorarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Explorar',style: Tema().titleStyle(),),centerTitle: true,forceMaterialTransparency: true,),
      body: ListView(
        padding: EdgeInsets.all(7),
        children: [
          Text('Lugares por visitar',style: Tema().subTitleStyle(),),
          SizedBox(height: 10,),
          SizedBox(
            height: 200,
            child: CustomSiteButtons()
          ),
          SizedBox(height: 15,),
          Text('Medios de transporte',style: Tema().subTitleStyle(),),
          SizedBox(height: 10,),
          Row(
            children: [
              OutlinedButton.icon(
                onPressed: (){}, 
                label: Text('Metro',style: Tema().textStyle(),),
                icon: Icon(Icons.train),
              ),
              SizedBox(width: 15,),
              OutlinedButton.icon(
                onPressed: (){},
                label: Text('Bus',style: Tema().textStyle()),
                icon: Icon(Icons.directions_bus),
                )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              OutlinedButton.icon(
                onPressed: (){},
                label: Text('Taxi',style: Tema().textStyle(),),
                icon: Icon(Icons.local_taxi), 
                )
            ],
          ),
          SizedBox(height: 20,),
          Text('Costumbres Locales', style: Tema().subTitleStyle(),),
          SizedBox(height: 10,),
          Text('Medellín es conocida por su gente amable, su actitud servicial y su vibrante cultura. Los paisas, como se les conoce a sus habitantes, son muy acogedores. No te sorprendas si te saludan con un "¡Hola, parcero/a!" (una forma amistosa de decir "amigo/a").',style:Tema().textStyle(),),
          SizedBox(height: 20,),
          Text('Consejos de seguridad',style: Tema().subTitleStyle(),),
          SizedBox(height: 10,),
          Text('Medellín es una ciudad generalmente segura, pero es prudente tomar precauciones. Evita exhibir objetos de valor, mantente atento a tu entorno y utiliza servicios de transporte confiables. Permanece en zonas bien iluminadas durante la noche y mantén tus pertenencias seguras.',style: Tema().textStyle(),),
        ],
      ),
    );
  }
}