import 'package:flutter/material.dart';

import '../../database/database.dart';
import '../Note_add_screen/Note_add_screen.dart';
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
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            My_widget(),
            NotesText_widget(),
            Tagline_widget(),
            SizedBox(height: 5),

            SearchField(),
            SizedBox(height: 5),

            Builder_file(),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => add_note()),
          ).then((value) {
            setState(() {});
          });
        },
        backgroundColor: Colors.purple.shade900,
        child: Icon(Icons.add, color: Colors.white, size: 40),
      ),
    );
  }

  Expanded Builder_file() {
    return Expanded(
      child: ListView.builder(
        itemCount: NoteData().list.length,
        itemBuilder: (context, index) {
          return CardWidget(
            i: index,
            onMoveTrash: () {
              setState(() {
                final removedItem = NoteData().list.removeAt(index);
                NoteData().Trashlist.add(removedItem);
              });
            },
          );
        },
      ),
    );
  }
}
