import 'package:flutter/material.dart';
import 'package:medtour/config/theme_config.dart';
import 'package:medtour/providers/event_model.dart';

class EventElement extends StatelessWidget {
  final Evento evento;
  const EventElement({
    super.key,
    required this.evento,
  });

  @override
  Widget build(BuildContext context) {
    Icon icono;
    String estado;
    if(evento.noHaComenzado){
      icono = Icon(Icons.check,color: Colors.green,);
      estado ='Sin Empezar';
    }else if(evento.estaActivo){
      icono = Icon(Icons.alarm,color: Colors.amber,);
      estado = 'En curso';
    }else{
      icono = Icon(Icons.close,color: Colors.red,);
      estado = 'Termino';
    }

    return Column(
      children: [
        SizedBox(height: 10,),
        Container(
          // ignore: deprecated_member_use
          decoration: BoxDecoration(color:Colors.grey.withOpacity(0.1), borderRadius: BorderRadius.circular(25)),
          child: ListTile(
            leading: icono,
            title: Text(evento.nombre,style: Tema().titleStyle(),),
            subtitle: Text('${evento.fechaInicioFormateada} - ${evento.fechaFinFormateada} ($estado)',style: Tema().textStyle(),),
            onTap: () {},
          ),
        ),
        SizedBox(height: 10,),
      ],
    );
  }
}