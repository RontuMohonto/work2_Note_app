import 'dart:developer';

import 'package:flutter/material.dart';

import '../note/note.dart';
import '../trash/trash_.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int selectedIndex = 0;
  List Screens = [noteScreen(), trash_Screen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.purple.shade900,
        unselectedItemColor: Colors.grey,

        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(color: Colors.purple.shade900),

        currentIndex: selectedIndex,
        onTap: (v) {
          log("===== v : $v");
          setState(() {
            selectedIndex = v;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.note_add_outlined),
            label: "Notes",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.restore_from_trash),
            label: "Trash",
          ),
        ],
      ),
    );
  }
}
