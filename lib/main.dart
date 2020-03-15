import 'package:flutter/material.dart';
import 'package:pluteum/ui/screens/home_screen.dart';
import 'package:pluteum/ui/screens/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pluteum',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        HomeScreen.id : (context) => HomeScreen(),
      },
    );
  }
}