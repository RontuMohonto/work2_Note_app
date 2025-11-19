import 'package:flutter/material.dart';

import '../../database/database.dart';
import 'Widgets/Card_Widget.dart';
import 'Widgets/Drawer_Widget.dart';
import 'Widgets/name1.dart';
import 'Widgets/name2.dart';
import 'Widgets/Search_Field.dart';
import 'Widgets/Tagline_Widget.dart';

class noteScreen extends StatefulWidget {
  const noteScreen({super.key});

  @override
  State<noteScreen> createState() => _noteScreenState();
}

class _noteScreenState extends State<noteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),

      backgroundColor: Colors.white,
      appBar: AppBar(centerTitle: true, backgroundColor: Colors.white),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Intro
            My_widget(),
            NotesText_widget(),
            Tagline_widget(),
            SizedBox(height: 15),

            //Search
            SearchField(),

            SizedBox(height: 20),

            Builder_file(),
          ],
        ),
      ),
    );
  }

  //Notes

  Expanded Builder_file() {
    return Expanded(
      child: ListView.builder(
        itemCount: NoteData().list.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => CardWidget(i: index),
      ),
    );
  }
}
