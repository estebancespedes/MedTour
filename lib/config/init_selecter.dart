import 'package:flutter/material.dart';
import 'package:medtour/screens/inicio.dart';
import 'package:medtour/screens/on_boarding/on_boarding_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitSelecter extends StatefulWidget {
  const InitSelecter({super.key});

  @override
  State<InitSelecter> createState() => _InitSelecterState();
}

class _InitSelecterState extends State<InitSelecter> {
  bool seenWelcomePage = false;

  @override
  void initState() {
    super.initState();
    checkSeenWelcome();
  }

  Future<void> checkSeenWelcome () async{
    final prefs = await SharedPreferences.getInstance();
    final hasSeen = prefs.getBool('SeenWelcomePage')?? false;
    setState(() {
      seenWelcomePage = hasSeen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return seenWelcomePage? NavigBar(): OnBoardingPage();
  }
}