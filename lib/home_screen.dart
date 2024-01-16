import 'package:flutter/material.dart';
import 'package:radiant_residencies_app/navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white, size: 35.0),
          backgroundColor: Colors.black,
        ),
        drawer: const NavBar(),
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
          child: const Column(
            children: [
              Row(
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
