import 'dart:convert';
import 'dart:developer';

class Video {
  List<ViewAllVideoResponse> success;

  Video({
    required this.success,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      success: List<ViewAllVideoResponse>.from(
          json["success"].map((x) => ViewAllVideoResponse.fromJson(x))),
    );
  }
}

class ViewAllVideoResponse {
  int id;
  int examid;
  int courseid;
  int subjectid;
  String topic;
  String videolink;
  String knorishvideolink;
  String thumbnail;
  String description;
  String note;
  String knorishnote;
  int isactive;
  int isbookmarked;

  ViewAllVideoResponse({
    required this.id,
    required this.examid,
    required this.courseid,
    required this.subjectid,
    required this.topic,
    required this.videolink,
    required this.knorishvideolink,
    required this.thumbnail,
    required this.description,
    required this.note,
    required this.knorishnote,
    required this.isactive,
    required this.isbookmarked,
  });

  factory ViewAllVideoResponse.fromJson(Map<String, dynamic> json) {
    return ViewAllVideoResponse(
        id: json["id"],
        examid: json["examid"],
        courseid: json["courseid"],
        subjectid: json["subjectid"],
        topic: json["videoname"],
        videolink: json["videolink"],
        knorishvideolink: json["knorishvideolink"] ?? '',
        thumbnail: json["thumbnail"],
        description: json["description"],
        note: json["note"],
        knorishnote: json["knorishnote"] ?? '',
        isactive: json["isactive"],
        isbookmarked: json.containsKey("bookmark") ? json["bookmark"] : 1);
  }
}
