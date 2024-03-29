import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreenFour extends StatefulWidget {
  const SplashScreenFour({super.key});

  @override
  State<SplashScreenFour> createState() => _SplashScreenFourState();
}

class _SplashScreenFourState extends State<SplashScreenFour> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
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
            SizedBox(
              width: 500.0,
              height: 700.0,
              child: Image.asset(
                "assets/bedroom-view-with-bed-sheets-decor.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 110.0),
              child: Center(
                child: SizedBox(
                  child: Image.asset("assets/Group 1.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
