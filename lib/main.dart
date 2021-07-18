import 'package:arduuno_app/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(ArduunoApp());

class ArduunoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.blue[700]
      ),
    );
  }
}