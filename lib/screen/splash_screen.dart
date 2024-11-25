import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_travel/screen/landing_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LandingPageOne()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 3, 169, 235),
            Color.fromARGB(255, 1, 41, 73)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Lottie.network(
                  'https://lottie.host/956e1e4f-8c98-4206-ae82-50dd50161d69/dtw01aXDDE.json'),
            ],
          ),
        ),
      ),
    );
  }
}
