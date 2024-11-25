import 'package:flutter/material.dart';
import 'package:project_travel/latihan_modul/latihanp5.dart';
import 'package:project_travel/latihan_modul/pertemuan6.dart';
import 'package:project_travel/screen/Home_page.dart';
import 'package:project_travel/screen/landing_page.dart';
import 'package:project_travel/screen/splash_screen.dart';
// import 'package:project_travel/screen/splash_screen.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
