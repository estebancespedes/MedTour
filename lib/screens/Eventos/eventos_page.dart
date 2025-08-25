
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:medtour/config/theme_config.dart';
import 'package:medtour/providers/event_model.dart';
import 'package:medtour/screens/Eventos/assets/error_message.dart';
import 'package:medtour/screens/Eventos/assets/event_element.dart';

class EventosPage extends StatefulWidget {
  const EventosPage({super.key});

  @override
  State<EventosPage> createState() => _EventosPageState();
}

class _EventosPageState extends State<EventosPage> {
  List<Evento>? eventos;
  bool error = false;
  bool loading = false;

  @override
  void initState() {
    super.initState();
    _refresh();
  }
  
  Future<void> _refresh() async{
    try{
      setState(() {
        loading = true;
      });
      var url = Uri.https('medtour-sql-api.onrender.com','/Eventos/');
      var response = await http.get(
        url,
        headers: {'Content-Type':'application/json'}
      ).timeout(
        const Duration( seconds: 10),
        onTimeout: () {
          throw Exception('Timeout');
        },
      );

      if(response.statusCode == 200){
        List<dynamic> jsonList = jsonDecode(response.body);
        List<Evento> eventosList = jsonList.map((json)=> Evento.fromJson(json)).toList();

        setState(() {
          eventos = eventosList;
          loading = false;
        });
      }else{
        throw Exception('Error con el servidor');
      }
    }catch (e){
      setState(() {
        error = true;
        loading =false;
      });
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Eventos',style: Tema().titleStyle(),),centerTitle: true,forceMaterialTransparency: true,),
      body:RefreshIndicator(
        onRefresh: _refresh,
        child: loading
        ? Center(child: CircularProgressIndicator())
        : error
        ? ErrorMessage()
        : ListView.builder(
          itemCount: eventos?.length ?? 0,
          itemBuilder: (BuildContext context, int index) {
            return EventElement(evento: eventos![index]);
          },
        )
      ),
    );
  }
}

