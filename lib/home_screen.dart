import 'package:flutter/material.dart';
import 'package:radiant_residencies_app/image_slider.dart';
import 'package:radiant_residencies_app/navigation_bar.dart';
import 'package:radiant_residencies_app/sign_in.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 20, 15),
                      child: Text(
                        "RADIANT RESIDENCIES",
                        style: TextStyle(
                          color: Color(0xFFFF7817),
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Radiant Residencies, your Oasis of Elegance. Experience luxury and personalized service in the heart of comfort. Unwind with us, where every stay is a radiant escape.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),

                const Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 40),
                  child: MainCarousel(),
                ),
                Center(
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFFFF7817)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInPage()));
                      },
                      child: const Text(
                        "Make Booking",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )),
                )
                // Text(
                //   "Our services",
                //   style: TextStyle(
                //     color: Color.fromRGBO(189, 101, 19, 1),
                //     fontSize: 26.0,
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
