import 'dart:convert';

class mcqhistmodel {
  int msg;
  List<mcqhist> success;

  mcqhistmodel({
    required this.msg,
    required this.success,
  });

  factory mcqhistmodel.fromJson(Map<String, dynamic> json) => mcqhistmodel(
        msg: json["msg"],
        success:
            List<mcqhist>.from(json["success"].map((x) => mcqhist.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "msg": msg,
        "success": List<dynamic>.from(success.map((x) => x.toJson())),
      };
}

class mcqhist {
  int mainid;
  int totalmark;
  String totaltime;
  int userid;
  int scoresaved;
  int id;
  String name;
  int examid;
  int courseid;
  int subjectid;
  int mcqcategoryid;
  int noOfQuestions;
  String duration;
  int correctMark;
  int incorrectMark;
  String description;
  String image;
  int isactive;

  mcqhist({
    required this.mainid,
    required this.totalmark,
    required this.totaltime,
    required this.userid,
    required this.scoresaved,
    required this.id,
    required this.name,
    required this.examid,
    required this.courseid,
    required this.subjectid,
    required this.mcqcategoryid,
    required this.noOfQuestions,
    required this.duration,
    required this.correctMark,
    required this.incorrectMark,
    required this.description,
    required this.image,
    required this.isactive,
  });

  factory mcqhist.fromJson(Map<String, dynamic> json) => mcqhist(
        mainid: json["mainid"],
        totalmark: json["totalmark"],
        totaltime: json["totaltime"],
        userid: json["userid"],
        scoresaved: json["scoresaved"],
        id: json["id"],
        name: json["name"],
        examid: json["examid"],
        courseid: json["courseid"],
        subjectid: json["subjectid"],
        mcqcategoryid: json["mcqcategoryid"],
        noOfQuestions: json["no_of_questions"],
        duration: json["duration"],
        correctMark: json["correct_mark"],
        incorrectMark: json["incorrect_mark"],
        description: json["description"],
        image: json["image"],
        isactive: json["isactive"],
      );

  Map<String, dynamic> toJson() => {
        "mainid": mainid,
        "totalmark": totalmark,
        "totaltime": totaltime,
        "userid": userid,
        "id": id,
        "name": name,
        "examid": examid,
        "courseid": courseid,
        "subjectid": subjectid,
        "mcqcategoryid": mcqcategoryid,
        "no_of_questions": noOfQuestions,
        "duration": duration,
        "correct_mark": correctMark,
        "incorrect_mark": incorrectMark,
        "description": description,
        "image": image,
        "isactive": isactive,
      };
}
