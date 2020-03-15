import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcome_screen_id';
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) =>
      Container(
        color: Colors.white,
        child: Center(
          child: Container(
            width: constraints.maxWidth * 0.8,
            child: Image.asset(
              'images/logos/pluteum_with_word_logo.png'
            ),
          ),
        ),
      ),
    );
  }
}

//TODO: Implement log in screen, register screen
