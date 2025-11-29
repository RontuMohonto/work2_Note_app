import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class apiclasses extends StatefulWidget {
  const apiclasses({super.key});

  @override
  State<apiclasses> createState() => _apiclassesState();
}

class _apiclassesState extends State<apiclasses> {
  bool isLoading = true;

  List<dynamic> datafirst = [];
  fatchdata() async {
    final url = Uri.parse("https://appapi.coderangon.com/api/slider");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print("success");
      final jsonData = jsonDecode(response.body);

      final getList = jsonData['data'] as List;
      Future.delayed(Duration(seconds: 4));

      setState(() {
        datafirst = getList;
        setState(() {
          isLoading = true;
        });
      });
    } else {
      print("API failed");
      isLoading = false;
    }
  }

  @override
  void initState() {
    super.initState();
    isLoading;
    fatchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDFE6E9),
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,

        title: Text(
          "Motivation Quotes",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: isLoading == true
          ? Center(child: Text("Loading", style: TextStyle(fontSize: 20)))
          : datafirst.isEmpty
          ? Text("No Data found")
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Column(
                spacing: 5,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Search authors or quotes...",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: datafirst.length,
                      itemBuilder: (context, index) => Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            spacing: 10,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red,
                                ),
                                child: Image(
                                  image: NetworkImage(
                                    "https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvcGYtaWNvbi0yOTE3LWNoaW0tbC5qcGc.jpg",
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: Text(
                                      "${datafirst[index]['quote']}",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "${datafirst[index]['author']}",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
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
                ],
              ),
            ),
    );
  }
}
