import 'package:flutter/material.dart';
import 'package:note_app/database/database.dart';

import '../note/Widgets/Card_Widget.dart';

class trash_Screen extends StatefulWidget {
  const trash_Screen({super.key});

  @override
  State<trash_Screen> createState() => _trash_ScreenState();
}

class _trash_ScreenState extends State<trash_Screen> {
  @override
  Widget build(BuildContext context) {
    final trash = NoteData().Trashlist;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Trash"),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
         Text("${NoteData().Trashlist}")
        ],
      ),
    );
  }
}
