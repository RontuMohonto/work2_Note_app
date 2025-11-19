import 'dart:developer';

import 'package:flutter/material.dart';

import '../Settings/settings.dart';
import '../folder/folder_screen.dart';
import '../note/note.dart';
import '../trash/trash_.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int selectedIndex = 0;
  List Screens = [
    noteScreen(),
    folder_Screen(),
    trash_Screen(),
    settingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
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
            icon: Icon(Icons.folder_copy_rounded),
            label: "Folders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restore_from_trash),
            label: "Trash",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
