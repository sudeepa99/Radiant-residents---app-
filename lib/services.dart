import 'package:flutter/material.dart';
import 'package:radiant_residencies_app/image_slider.dart';
import 'package:radiant_residencies_app/main_carousel.dart';
import 'package:radiant_residencies_app/navigation_bar.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white, size: 35.0),
          backgroundColor: Colors.black,
        ),
        drawer: const NavBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage(
                    "assets/beautiful-hall-with-male-silhouette-standing-stairway.jpg"),
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.8), BlendMode.darken),
                fit: BoxFit.cover,
                alignment: Alignment.topLeft,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 15),
                    child: Text(
                      "OUR SERVICES",
                      style: TextStyle(
                        color: Color.fromRGBO(189, 101, 19, 1),
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 25),
                    child: Text(
                      "Discover a world of convenience and comfort with our array of services designed to elevate your hotel booking experience. From seamless reservations to personalized amenities, we strive to make your stay memorable and stress-free.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/accomodation2.jpg",
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "Luxury Accomodation",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    "assets/foods.jpg",
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "Savoring Foods",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    "assets/swimming-pool.jpg",
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "Sparkling Pool",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    "assets/function.jpg",
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "Memorable Events",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Lanka",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
