import 'package:flutter/material.dart';

import 'splash_page_four.dart';

class SplashScreenThree extends StatefulWidget {
  const SplashScreenThree({super.key});

  @override
  State<SplashScreenThree> createState() => _SplashScreenThreeState();
}

class _SplashScreenThreeState extends State<SplashScreenThree> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SplashScreenFour(),
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
                "assets/top-view-meals-tasty-yummy-different-pastries-dishes-brown-surface.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 110.0),
              child: Center(
                child: SizedBox(
                  child: Image.asset("assets/Group 2.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
