import 'package:flutter/material.dart';
import 'package:radiant_residencies_app/navigation_bar.dart';

class ContactPage extends StatelessWidget {
  // final List<String> emails = [
  //   "General Inquiries : info@radiantreshotel.com",
  //   "Reservations : reservations@radiantres.com"
  // ];
  const ContactPage({super.key});

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
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Text(
                    "Welcome to Radiant Residencies Hotel. We are delighted to assist you with any inquiries or requests you may have. Please feel free to reach out to us through the following channels:",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Address:",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30, bottom: 25),
                        child: Text(
                          "Radiant Residencies Hotel,\n123 Serene Street,\nCityville,\nState 12345,\nEngland.",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Phone:",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 45),
                        child: Text(
                          "+92342367895\n+92567834567",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email:",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 52),
                        child: Text(
                          "info@radianthotel.com\nreservations@radiant.com",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 250),
                      child: Text(
                        "Social Media:",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 55),
                      child: Text(
                        "Facebook: @RadiantHotel",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        "Twitter: @Radiant_Hotel",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 60),
                      child: Text(
                        "Instagram: @radiant_hotel",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
