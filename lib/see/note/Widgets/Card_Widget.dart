import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:note_app/database/database.dart';
import '../../Details_page/Details_page.dart';

class CardWidget extends StatefulWidget {
  final int i;
  final VoidCallback onMoveTrash;

  const CardWidget({super.key, required this.i, required this.onMoveTrash});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        showModalBottomSheet(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          builder: (context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);

                    widget.onMoveTrash();

                    log("Item moved to Trash");
                  },
                  child: ListTile(
                    leading: Icon(Icons.delete, color: Colors.purple.shade900),
                    title: Text("Move to trash"),
                  ),
                ),

                ListTile(
                  leading: Icon(Icons.archive, color: Colors.purple.shade900),
                  title: Text("Archive"),
                ),

                ListTile(
                  leading: Icon(Icons.share, color: Colors.purple.shade900),
                  title: Text("Share"),
                ),
              ],
            );
          },
        );
      },

      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details_(
              title: '${NoteData().list[widget.i]['title']}',
              date: '${NoteData().list[widget.i]['date']}',
              time: '${NoteData().list[widget.i]['time']}',
              note: '${NoteData().list[widget.i]['note']}',
              index: widget.i,
            ),
          ),
        ).then((v) {
          setState(() {});
        });
      },

      child: Card(
        color: Colors.purple.shade900,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Row(
                children: [
                  Text(
                    "${NoteData().list[widget.i]['title']}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "${NoteData().list[widget.i]['date']}",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              Text(
                "${NoteData().list[widget.i]['note']}",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Spacer(),
                  Text(
                    "${NoteData().list[widget.i]['time']}",
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
    );
  }
}
