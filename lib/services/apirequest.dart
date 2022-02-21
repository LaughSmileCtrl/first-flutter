import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ipcalculator/entities/semesterentity.dart';

class ApiRequest {
  static Future<Semester> fetchSemester(String id) async {
    var futureSemester = null;
    final response = await http
        .get(Uri.parse('http://itipcalculatormang.000webhostapp.com/api/semesters/${id}'));

    if(response.statusCode == 200) {
      var jsonString = response.body;
      var jsonMap = json.decode(jsonString);
      futureSemester = Semester.fromJson(jsonMap);
    }

    return futureSemester;
  }
}