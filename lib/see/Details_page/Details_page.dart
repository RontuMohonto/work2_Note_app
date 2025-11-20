import 'package:flutter/material.dart';

class Details_ extends StatefulWidget {
  const Details_({
    super.key,
    required this.title,
    required this.date,
    required this.time,
    required this.note,
  });

  final String title;
  final String date;
  final String time;
  final String note;

  @override
  State<Details_> createState() => _Details_State();
}

class _Details_State extends State<Details_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
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
