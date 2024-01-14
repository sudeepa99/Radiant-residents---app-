import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:radiant_residencies_app/splash_page_one.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 8)).then((value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SplashScreenOne(),
        )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Image.asset("assets/Korina Claudia.png"),
            Lottie.asset(
              "assets/animations/Animation - 1705251547370.json",
              animate: true,
              repeat: true,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
