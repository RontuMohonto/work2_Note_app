
import 'package:flutter/material.dart';
class My_widget extends StatelessWidget {
  const My_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "R",
      style: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.bold,
        color: Colors.purple.shade900,
      ),
    );
  }
}