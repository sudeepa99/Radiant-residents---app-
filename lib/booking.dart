import 'package:flutter/material.dart';
import 'package:radiant_residencies_app/navigation_bar.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
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
        //height: MediaQuery.of(context).size.height,
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
      ),
    );
  }
}
