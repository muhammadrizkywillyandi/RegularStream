import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CyberMeet',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor:
            Colors.brown[800], // Set the background color to brown
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(title: "beranda"),
      },
    );
  }
}
