import 'package:flutter/material.dart';

import 'splash_page_two.dart';

class SplashScreenOne extends StatefulWidget {
  const SplashScreenOne({super.key});

  @override
  State<SplashScreenOne> createState() => _SplashScreenOneState();
}

class _SplashScreenOneState extends State<SplashScreenOne> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SplashScreenTwo(),
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
                "assets/hammocks-near-pool.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 110.0),
              child: Center(
                child: SizedBox(
                  child: Image.asset("assets/Group 4.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
