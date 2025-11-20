import 'package:flutter/material.dart';
import 'package:note_app/database/database.dart';

import '../../Details_page/Details_page.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.i});

  final int i;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details_(
              title: '${NoteData().list[i]['title']}',
              date: '${NoteData().list[i]['date']}',
              time: '${NoteData().list[i]['time']}',
              note: '${NoteData().list[i]['note']}',
            ),
          ),
        );
      },
      child: Card(
        color: Colors.purple.shade900,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Row(
                children: [
                  Text(
                    "${NoteData().list[i]['title']}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "${NoteData().list[i]['date']}",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(
                "${NoteData().list[i]['note']}",
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
                    "${NoteData().list[i]['time']}",
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
