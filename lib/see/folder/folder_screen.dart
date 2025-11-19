import 'package:flutter/material.dart';

class folder_Screen extends StatefulWidget {
  const folder_Screen({super.key});

  @override
  State<folder_Screen> createState() => _folder_ScreenState();
}

class _folder_ScreenState extends State<folder_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: Text("Folder"),
      ),
    );
  }
}
