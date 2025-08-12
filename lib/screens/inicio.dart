import 'package:flutter/material.dart';
import 'package:medtour/config/theme_config.dart';
import 'package:medtour/screens/Eventos/eventos_page.dart';
import 'package:medtour/screens/Mapa/mapa_page.dart';
import 'package:medtour/screens/ajustes/ajustes_page.dart';
import 'package:medtour/screens/explorar/explorar_page.dart';

class NavigBar extends StatefulWidget {
  const NavigBar({super.key});

  @override
  State<NavigBar> createState() => _NavigBarState();
}

class _NavigBarState extends State<NavigBar> {
  int currentIndex = 1;
  static List<Widget> pantallas = [
    ExplorarPage(),
    EventosPage(),
    MapaPage(),
    AjustesPage(),
  ];
   
  void _onpress (int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pantallas[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Tema().color,
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.grey,
        
        items:const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Explora'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: 'Eventos'),
          BottomNavigationBarItem(icon: Icon(Icons.map),label:'Mapa'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Ajustes'),
          
        ],
        currentIndex: currentIndex,
        onTap: _onpress,
      ),
    );
  }
}