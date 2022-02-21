import 'dart:convert';

Semester semesterFromJson(String str) => Semester.fromJson(json.decode(str));

String semesterToJson(Semester data) => json.encode(data.toJson());

class Semester {
  Semester({
    required this.message,
    required this.semester,
    required this.subject,
    required this.link,
  });

  String message;
  String semester;
  List<Subject> subject;
  String link;

  factory Semester.fromJson(Map<String, dynamic> json) => Semester(
    message: json["message"],
    semester: json["semester"],
    subject: List<Subject>.from(json["subject"].map((x) => Subject.fromJson(x))),
    link: json["link"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "semester": semester,
    "subject": List<dynamic>.from(subject.map((x) => x.toJson())),
    "link": link,
  };
}

class Subject {
  Subject({
    required this.subid,
    required this.sks,
    required this.name,
  });

  String subid;
  int sks;
  String name;

  factory Subject.fromJson(Map<String, dynamic> json) => Subject(
    subid: json["subid"],
    sks: json["sks"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "subid": subid,
    "sks": sks,
    "name": name,
  };
}
