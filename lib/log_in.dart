import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage(
                  "assets/beautiful-hall-with-male-silhouette-standing-stairway.jpg"),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.darken),
              fit: BoxFit.cover,
              alignment: Alignment.topLeft,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 190),
                child: Image.asset(
                  "assets/Korina Claudia.png",
                  height: 150.0,
                  width: 150.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
