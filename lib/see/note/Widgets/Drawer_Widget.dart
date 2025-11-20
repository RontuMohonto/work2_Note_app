import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Rontu Mohonto"),
            accountEmail: Text("rnote@.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://imagedelivery.net/xE-VtsYZUS2Y8MtLMcbXAg/4a05b139a21e91fdb87f/sm",
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.purple.shade900,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.archive, color: Colors.deepPurple.shade900),
            title: Text("Archive"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.favorite_border, color: Colors.deepPurple.shade900),
            title: Text("Favorites"),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.star, color: Colors.deepPurple.shade900),
            title: Text("Rate us"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.feedback_outlined,
              color: Colors.deepPurple.shade900,
            ),
            title: Text("Feedback"),
            onTap: () {},
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text("Logout"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
