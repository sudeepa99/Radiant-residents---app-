import 'package:flutter/material.dart';
import 'package:radiant_residencies_app/navigation_bar.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

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
              "Step into a world where every moment becomes a cherished memory. From enchanting weddings to glamorous galas, our venues offer the perfect backdrop for your unforgettable events.",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 50, top: 15, bottom: 10),
              child: Text(
                "We offer our services for:",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                "1.\tEnchanting Weddings",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                "2.\tIntimate Anniversaries",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                "3.\tJoyous Birthday Bashes",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                "4.\tSophisticated Cocktail Soirées",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                "5.\tCorporate Conferences & Retreats",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
