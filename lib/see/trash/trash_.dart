import 'package:flutter/material.dart';
import 'package:note_app/database/database.dart';
import 'package:note_app/see/bottom/bottom.dart';
import 'package:note_app/see/note/Widgets/name1.dart';

import '../note/Widgets/Card_Widget.dart';
import '../note/Widgets/Tagline_Widget.dart';
import '../note/Widgets/name2.dart';
import '../note/note.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Trash", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple.shade900,
      ),
      body: NoteData().Trashlist.isEmpty
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: My_widget(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: NotesText_widget(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Tagline_widget(),
                ),

                SizedBox(height: 300),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.hourglass_empty,
                      color: Colors.purple.shade900,
                      size: 20,
                    ),
                    Text("Empty"),
                  ],
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: My_widget(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: NotesText_widget(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Tagline_widget(),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: NoteData().Trashlist.length,
                    itemBuilder: (context, i) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      child: InkWell(
                        onLongPress: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: Icon(
                                      Icons.restore,
                                      color: Colors.green,
                                    ),
                                    title: Text("Restore"),
                                    onTap: () {
                                      Navigator.pop(context);

                                      final restoredNote = NoteData().Trashlist[i];
                                      NoteData().Trashlist.removeAt(i);
                                      NoteData().list.add(restoredNote);

                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            "Note Restored Successfully!",
                                          ),
                                        ),
                                      );

                                      setState(() {});

                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => bottom()));
                                    },
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      Icons.delete_forever,
                                      color: Colors.red,
                                    ),
                                    title: Text("Delete forever"),
                                    onTap: () {
                                      Navigator.pop(context);
                                      NoteData().Trashlist.removeAt(i);
                                      setState(() {});
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Card(
                          color: Colors.purple.shade900,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 10,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "${NoteData().Trashlist[i]['title']}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "${NoteData().Trashlist[i]['date']}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),

                                Text(
                                  "${NoteData().Trashlist[i]['note']}",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Spacer(),
                                    Text(
                                      "${NoteData().Trashlist[i]['time']}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
