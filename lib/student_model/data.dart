import 'model.dart';

class StudentData {
  static List<dynamic> data = [
    {" id": 1, "name ": "rontu", "department": "cse", "session": "21-22"},
    {" id": 2, "name ": "selim", "department": "food", "session": "22-23"},
    {" id": 3, "name ": "kausar", "department": "civil", "session": "24-25"},
  ];

  static List<StudentDataModel> datas = [
    StudentDataModel(id: 1, name: "rontu", department: "cse", session: "21-22"),
    StudentDataModel(id: 1, name: "rontu", department: "cse", session: "21-22"),
    StudentDataModel(
      id: 2,
      name: "sabbir",
      department: "eee",
      session: "20-21",
    ),
    StudentDataModel(
      id: 3,
      name: "anik",
      department: "civil",
      session: "19-20",
    ),
    StudentDataModel(id: 4, name: "tamim", department: "bba", session: "22-23"),
    StudentDataModel(
      id: 5,
      name: "rakib",
      department: "english",
      session: "18-19",
    ),
    StudentDataModel(
      id: 6,
      name: "farhan",
      department: "law",
      session: "21-22",
    ),
  ];
}
