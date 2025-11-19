import 'package:flutter/material.dart';

class trash_Screen extends StatefulWidget {
  const trash_Screen({super.key});

  @override
  State<trash_Screen> createState() => _trash_ScreenState();
}

class _trash_ScreenState extends State<trash_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Trash"),
        backgroundColor: Colors.yellow,
      ),
    );
  }
}
