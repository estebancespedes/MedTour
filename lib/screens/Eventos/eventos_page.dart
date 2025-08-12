import 'package:flutter/material.dart';
import 'package:medtour/config/theme_config.dart';

class EventosPage extends StatelessWidget {
  const EventosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Eventos',style: Tema().titleStyle(),),centerTitle: true,forceMaterialTransparency: true,),
      body: ListView(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        children: [
          EventElement(),
          EventElement(),
          EventElement()
        ],
      ),
    );
  }
}

class EventElement extends StatelessWidget {
  const EventElement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        Container(
          decoration: BoxDecoration(color: const Color.fromARGB(37, 158, 158, 158), borderRadius: BorderRadius.circular(25)),
          child: ListTile(
            leading: Icon(Icons.dinner_dining),
            title: Text('Evento',style: Tema().titleStyle(),),
            subtitle: Text('Este es un evento (aquí van las fechas).',style: Tema().textStyle(),),
            onTap: () {},
          ),
        ),
        SizedBox(height: 10,),
      ],
    );
  }
}