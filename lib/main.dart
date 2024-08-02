import 'package:c11_exam_sun_online/screens/AudiBook%20App/AudiBookApp.dart';
import 'package:c11_exam_sun_online/screens/Moody%20App/MoodyApp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AudiBookApp.routeName,
      routes: {
        AudiBookApp.routeName: (context) => AudiBookApp(),
        MoodyApp.routeName: (context) => MoodyApp(),
      },
    );
  }
}
