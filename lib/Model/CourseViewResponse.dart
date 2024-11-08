import 'dart:convert';
import 'dart:developer';

class Course {
  List<MycourseResponse> success;

  Course({
    required this.success,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      success: List<MycourseResponse>.from(
          json["success"].map((x) => MycourseResponse.fromJson(x))),
    );
  }
}

class MycourseResponse {
  int id;
  int examid;
  String course;
  String description;
  String image;
  int actualprice;
  int offerprice;
  String offertilldate;
  String duration;
  String demovideolink;
  String demoknorishvideolink;
  int videolanguage;
  int Isactive;
  String videolanguagename;
  int ispurchased;

  MycourseResponse({
    required this.id,
    required this.examid,
    required this.course,
    required this.description,
    required this.image,
    required this.actualprice,
    required this.offerprice,
    required this.offertilldate,
    required this.duration,
    required this.demovideolink,
    required this.demoknorishvideolink,
    required this.videolanguage,
    required this.Isactive,
    required this.videolanguagename,
    required this.ispurchased,
  });

  factory MycourseResponse.fromJson(Map<String, dynamic> json) {
    /// log("qqwqwqwqwqw===="+json["ispurchased"].toString());
    ///
    ///

    return MycourseResponse(
      id: json["id"],
      examid: json["examid"],
      course: json["course"],
      description: json["description"],
      image: json["image"],
      actualprice: json["actualprice"],
      offerprice: json["offerprice"],
      offertilldate: json["offertilldate"],
      duration: json["duration"],
      demovideolink: json["demovideolink"] == null
          ? json['demovideolink'] = ""
          : json['demovideolink'],
      demoknorishvideolink: json["demoknorishvideolink"] == null
          ? ""
          : json['demoknorishvideolink'],
      videolanguage: json["videolanguage"],
      Isactive: json["isactive"],
      videolanguagename: json.containsKey("videolanguagename")
          ? json["videolanguagename"] == null
              ? json['videolanguagename'] = ""
              : json['videolanguagename']
          : "",
      // json['videolanguagename']==null?json['videolanguagename']="":json['videolanguagename'],
      ispurchased: json.containsKey("ispurchased")
          ? json["ispurchased"] == null
              ? json['ispurchased'] = ""
              : json['ispurchased']
          : 2,
    );
  }
}
