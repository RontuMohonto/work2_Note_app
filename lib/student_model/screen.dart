import 'package:flutter/material.dart';
import 'package:note_app/student_model/data.dart';

class DataShowScreen extends StatefulWidget {
  const DataShowScreen({super.key});

  @override
  State<DataShowScreen> createState() => _DataShowScreenState();
}

class _DataShowScreenState extends State<DataShowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          "DataShowScreen",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      backgroundColor: Colors.white,
      body: Center(
        child: ListView.builder(
          itemCount: StudentData.datas.length,
          itemBuilder: (context, i) => ListTile(
            leading: Text("${StudentData.datas[i].id}"),
            title: Text("${StudentData.datas[i].name}"),
            subtitle: Text("${StudentData.datas[i].department}"),
          ),
        ),
      ),
    );
  }
}
