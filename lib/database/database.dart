class NoteData {

  static final NoteData _instance = NoteData._internal();

  factory NoteData() {
    return _instance;
  }

  NoteData._internal();

  List<Map<String, dynamic>> list = [
    {
      "id": 0,
      "title": "Grocery List",
      "note":
      "Buy milk, eggs and rice. Check discount on oil. Remember to buy salt too.",
      "date": "2025-11-19",
      "time": "09:30",
    },
  ];
}
