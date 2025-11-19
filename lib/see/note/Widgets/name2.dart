import 'package:flutter/material.dart';

class NotesText_widget extends StatelessWidget {
  const NotesText_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Notes...",
      style: TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.bold,
        color: Colors.purple.shade900,
      ),
    );
  }
}
