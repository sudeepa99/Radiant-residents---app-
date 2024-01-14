import 'package:flutter/material.dart';

import 'splash_page_three.dart';

class SplashScreenTwo extends StatefulWidget {
  const SplashScreenTwo({super.key});

  @override
  State<SplashScreenTwo> createState() => _SplashScreenTwoState();
}

class _SplashScreenTwoState extends State<SplashScreenTwo> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SplashScreenThree(),
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
                "assets/beautiful-outdoor-nature-landscape-with-sea-ocean-coconut-palm-tree-around-swimming-pool-sunrsie-sunset (1).jpg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 110.0),
              child: Center(
                child: SizedBox(
                  child: Image.asset("assets/Group 3.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
