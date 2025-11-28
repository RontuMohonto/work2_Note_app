import 'package:flutter/material.dart';
import 'package:note_app/see/Details_page/Details_page.dart';
import 'package:note_app/see/Note_add_screen/Note_add_screen.dart';
import 'package:note_app/see/bottom/bottom.dart';
import 'package:note_app/see/log/login.dart';

import 'package:note_app/see/note/note.dart';
import 'package:note_app/see/reg/regestration.dart';
import 'package:note_app/see/splash/splash_.dart';
import 'package:note_app/student_model/screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: DataShowScreen());
  }
}
