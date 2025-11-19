import 'package:flutter/material.dart';



class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Rontu Mohonto"),
            accountEmail: Text("newscenery28@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://thumbs.dreamstime.com/b/colorful-customizable-cartoon-features-smiling-boy-dark-hair-red-shirt-profile-pic-illustration-335486580.jpg",
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade900,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 15),

          ListTile(
            leading: Icon(Icons.home, color: Colors.deepPurple.shade900),
            title: Text("Home"),
            onTap: () {},
          ),
          SizedBox(height: 15),

          ListTile(
            leading: Icon(Icons.person, color: Colors.deepPurple.shade900),
            title: Text("Profile"),
            onTap: () {},
          ),
          SizedBox(height: 15),

          ListTile(
            leading: Icon(Icons.settings, color: Colors.deepPurple.shade900),
            title: Text("Settings"),
            onTap: () {},
          ),

          SizedBox(height: 10),
          ListTile(
            leading: Icon(
              Icons.privacy_tip_outlined,
              color: Colors.deepPurple.shade900,
            ),
            title: Text("Privacy Policy"),
            onTap: () {},
          ),

          SizedBox(height: 5),

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
          SizedBox(height: 15),

          Divider(),

          SizedBox(height: 15),
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