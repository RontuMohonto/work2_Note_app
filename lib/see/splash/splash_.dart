import 'package:flutter/material.dart';

import '../bottom/bottom.dart';
import '../reg/regestration.dart';

class splash_ extends StatefulWidget {
  const splash_({super.key});

  @override
  State<splash_> createState() => _splash_State();
}

class _splash_State extends State<splash_> {
  @override
  timerFunCall() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.push(context, MaterialPageRoute(builder: (context) => registration()));
  }

  void initState() {
    timerFunCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEFFFE),
      appBar: AppBar(backgroundColor: Colors.white),
      body: Center(child: Image.asset("assets/all.png")),
    );
  }
}
