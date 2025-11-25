import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:note_app/database/database.dart';

import '../bottom/bottom.dart';
import '../note/note.dart';

class update_note extends StatefulWidget {
  const update_note({
    super.key,
    required this.title,
    required this.details,
    required this.index,
  });

  final String title;
  final String details;
  final int index;

  @override
  State<update_note> createState() => _update_noteState();
}

class _update_noteState extends State<update_note> {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController detailscontroller = TextEditingController();

  Showdata() {
    titlecontroller.text = widget.title;
    detailscontroller.text = widget.details;
  }

  @override
  void initState() {
    Showdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log("=====${widget.title}==");
    log("=====${widget.details}==");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Update your notes hare...",
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
                ),
                enabledBorder: OutlineInputBorder(
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
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        onPressed: () {

          ScaffoldMessenger.of(
            context,
          ).showSnackBar(
            SnackBar(
              content: Text(
                "Note Updated Successfully!",
              ),
            ),
          );
          Map<String, dynamic> data = {
            "title": titlecontroller.text,
            "note": detailscontroller.text,
            "time":
                "${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}",
            "date":
                "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}",
          };
          NoteData().list[widget.index] = data;

          setState(() {});
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => bottom()));
        },
        backgroundColor: Colors.purple.shade900,
        child: Text(
          "Update",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
