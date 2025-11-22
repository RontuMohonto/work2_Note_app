import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:note_app/database/database.dart';

import '../note/note.dart';

class add_note extends StatefulWidget {
  const add_note({super.key});

  @override
  State<add_note> createState() => _add_noteState();
}

class _add_noteState extends State<add_note> {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController detailscontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Add your notes hare...",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          spacing: 15,

          children: [
            TextField(
              controller: titlecontroller,
              decoration: InputDecoration(
                fillColor: Colors.white,

                hintText: "title...",

                filled: true,

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.purple.shade900,
                    width: 1,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple.shade900,
                    width: 1,
                  ),

                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            TextField(
              controller: detailscontroller,

              maxLines: 15,

              decoration: InputDecoration(
                fillColor: Colors.white,

                hintText: "write your notes hare...",

                filled: true,

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.purple.shade900,
                    width: 1,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple.shade900,
                    width: 1,
                  ),

                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log("${titlecontroller.text}");
          log("${detailscontroller.text}");

          Map<String, dynamic> data = {
            "title": titlecontroller.text,
            "note": detailscontroller.text,
            "time":
                "${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}",
            "date":
                "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}",
          };

          log(">>>>$data");
          log("========+${NoteData().list.length}");

          NoteData().list.add(data);
          Navigator.pop((context));
        },
        backgroundColor: Colors.purple.shade900,
        child: Text(
          "Save",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
