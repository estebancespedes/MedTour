import 'package:flutter/material.dart';

class NavigBar extends StatefulWidget {
  const NavigBar({super.key});

  @override
  State<NavigBar> createState() => _NavigBarState();
}

class _NavigBarState extends State<NavigBar> {
  int currentIndex = 0;
  static List<Widget> pantallas = [
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
        selectedItemColor: Colors.red,
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