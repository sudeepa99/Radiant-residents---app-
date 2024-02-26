import 'package:flutter/material.dart';
import 'package:radiant_residencies_app/image_slider_acc.dart';
import 'package:radiant_residencies_app/navigation_bar.dart';

class Accomodation extends StatelessWidget {
  const Accomodation({super.key});

  // final List<String> items = [
  //   "Discover Your Perfect Room: Explore a range of room types tailored to your needs, from cozy standard rooms to luxurious suites and family-friendly accommodations. Each room comes with detailed descriptions of amenities and special features.",
  //   "Luxurious Amenities: Enjoy a wealth of amenities designed to enhance your stay, including complimentary Wi-Fi, breakfast options, air conditioning, heating, television, mini-fridge, and convenient room service. ",
  //   "Prime Locations: Find hotels situated in prime locations close to key attractions, transportation hubs, and local amenities such as shopping centers, restaurants, and entertainment venues. ",
  //   "Visualize Your Stay: Get a sneak peek of our accommodations with stunning photos showcasing our rooms, common areas, and facilities. Dive deeper with virtual tours providing immersive 360-degree views to help you visualize your experience.",
  //   "24/7 Support: Need assistance? Our dedicated customer support team is available around the clock to address any inquiries or concerns you may have. Reach out via live chat, email, or phone to receive prompt assistance whenever you need it."
  // ];

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
        child: ListView(
          children: const [
            Text(
              "Discover a comfortable and memorable stay with us. Our accommodation is designed to provide you with a home away from home.",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 50, top: 15, bottom: 10),
              child: Text(
                "Here's a glimpse of what we offer:",
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
                "1.\tDiscover Your Perfect Room.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                "2.\tFree Wifi",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                "3.\tAir conditioning.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                "4.\tConvenient room service.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                "5.\t24/7 Support.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            MainCarouselAcc(),
            SizedBox(
              height: 20,
            )

            // ListView.builder(itemBuilder: (context, index) {
            //   return ListTile(
            //     title: Text(
            //       items[index],
            //       style: const TextStyle(
            //         color: Colors.white,
            //         fontSize: 20.0,
            //       ),
            //     ),
            //   );
            // },
            // ),
          ],
        ),
      ),
    );
  }
}
