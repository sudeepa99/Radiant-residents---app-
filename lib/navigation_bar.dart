import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Sudeepa"),
            accountEmail: Text("Sudeepa1234nisal@gmail.com"),
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: NetworkImage(
                    "https://www.freepik.com/free-photo/sunset-coming-through-windows-hotel_7554073.htm#query=darken%20hotel&position=0&from_view=search&track=ais&uuid=605b74cf-194a-4289-bcbf-0ded1b6eb025"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.room_service_sharp),
            title: Text("Services"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.book_online),
            title: Text("Booking"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.local_offer_sharp),
            title: Text("Seasonal Offers"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.contact_phone),
            title: Text("Contact Us"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
