import 'dart:convert';
import 'dart:developer';



import 'dart:convert';
import 'dart:developer';

class GetMCQ {
  List<GetMcqResponse> success;

  GetMCQ({
    required this.success,
  });

  factory GetMCQ.fromJson(Map<String, dynamic> json) {
    return GetMCQ(
      success: List<GetMcqResponse>.from(json["success"].map((x) => GetMcqResponse.fromJson(x))),
    );
  }
}


class GetMcqResponse {
  int id;
  String name;
  int examid;
  int courseid;
  int no_of_questions;
  String duration;
  int correct_mark;
  int incorrect_mark;
  String description;
  String image;

  GetMcqResponse({
    required this.id,
    required this.name,
    required this.examid,
    required this.courseid,
    required this.no_of_questions,
    required this.duration,
    required this.correct_mark,
    required this.incorrect_mark,
    required this.description,
    required this.image,
  });

  factory GetMcqResponse.fromJson(Map<String, dynamic> json) {
    return GetMcqResponse(
      id: json["id"],
      name: json["name"],
      examid: json["examid"],
      courseid: json["courseid"],
      no_of_questions: json["no_of_questions"],
      duration: json["duration"],
      correct_mark: json["correct_mark"],
      incorrect_mark: json["incorrect_mark"],
      description: json["description"],
      image: json["image"],
    );
  }
}
