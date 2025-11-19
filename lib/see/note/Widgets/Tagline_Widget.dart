import 'package:flutter/material.dart';
class Tagline_widget extends StatelessWidget {
  const Tagline_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Because every idea matters",
      style: TextStyle(fontSize: 20, color: Colors.purple.shade900),
    );
  }
}