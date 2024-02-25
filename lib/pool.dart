import 'package:flutter/material.dart';
import 'package:radiant_residencies_app/image_slider_pool.dart';
import 'package:radiant_residencies_app/navigation_bar.dart';

class Pool extends StatelessWidget {
  const Pool({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white, size: 35.0),
        backgroundColor: Colors.black,
      ),
      drawer: const NavBar(),
      body: Container(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
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
        child: ListView(
          children: const [
            Text(
              "Immerse yourself in relaxation and luxury as you explore our inviting oasis. Dive into crystal-clear waters surrounded by lush greenery and panoramic views.",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            MainCarouselPool(),
          ],
        ),
      ),
    );
  }
}
