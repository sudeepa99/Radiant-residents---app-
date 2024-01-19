import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Sudeepa"),
              accountEmail: Text("Sudeepa1234nisal@gmail.com"),
              decoration: BoxDecoration(
                color: Color.fromRGBO(189, 101, 19, 1),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home",
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.room_service_sharp),
              title: const Text(
                "Services",
                style: TextStyle(
                  fontFamily: "SFPRODISPLAY",
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.book_online),
              title: const Text("Booking",
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.local_offer_sharp),
              title: const Text("Seasonal Offers",
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.contact_phone),
              title: const Text("Contact Us",
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
