import 'dart:convert';
import 'dart:developer';

class Subject {
  List<MysubjectResponse> success;

  Subject({
    required this.success,
  });

  factory Subject.fromJson(Map<String, dynamic> json) {
    return Subject(
      success: List<MysubjectResponse>.from(
          json["success"].map((x) => MysubjectResponse.fromJson(x))),
    );
  }
}

class MysubjectResponse {
  int id;
  String unitname;
  int totalcountofvideo;

  MysubjectResponse({
    required this.id,

    required this.unitname,

    required this.totalcountofvideo,
  });

  factory MysubjectResponse.fromJson(Map<String, dynamic> json) {
    return MysubjectResponse(
      id: json["id"]==null?json['id']="":json['id'],

      unitname: json["unitname"]==null?json['unitname']="":json['unitname'],

      totalcountofvideo: json["videocount"],
    );
  }
}
