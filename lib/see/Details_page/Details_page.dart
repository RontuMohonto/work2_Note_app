import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:note_app/see/Details_page/update_page.dart';

class Details_ extends StatefulWidget {
  const Details_({
    super.key,
    required this.title,
    required this.date,
    required this.time,
    required this.note,
    required this.index,
  });

  final String title;
  final String date;
  final String time;
  final String note;
  final int index;

  @override
  State<Details_> createState() => _Details_State();
}

class _Details_State extends State<Details_> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => update_note(
                    title: widget.title,
                    details: widget.note,
                    index: widget.index,
                  ),
                ),
              ).then((value) {
                setState(() {});
              });
            },
            child: Icon(Icons.edit, size: 25, color: Colors.purple.shade900),
          ),
          SizedBox(width: 15),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Note Details",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Container(
                          height: 2,
                          width: 122,
                          color: Colors.purple.shade900,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                      ),
                    ),
                    Spacer(),
                    Text(
                      widget.time,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.date,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                child: Text(widget.note, style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
