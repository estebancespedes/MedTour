import 'package:flutter/material.dart';
import 'package:medtour/config/theme_config.dart';
import 'package:medtour/screens/inicio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  Future<void> markSeenOnboarding () async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('SeenWelcomePage', true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 40,
        children: [
          const Image(image: AssetImage('lib/screens/on_boarding/assets/get_started_1.png')),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
            child:  Column(
              spacing: 20,
              children: [
                Text(
                'Descubre Medellín', 
                textAlign: TextAlign.center,
                style: Tema().titleStyle()
                ),
                Text(
                'Descubre la ciudad de la eterna primavera, desde sus lugares emblemáticos hasta sus joyas ocultas. ¡Tu aventura empieza aquí!',
                  textAlign: TextAlign.center,
                  style: Tema().textStyle(),
                )
              ],
            ),
          ),
          FilledButton(
            onPressed: () async{
              Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const NavigBar()),
              );
              markSeenOnboarding();
            },
            child: Text('Empezar',style: Tema().textStyle(),),
          ),
        ],
      ),
    );
  }
}