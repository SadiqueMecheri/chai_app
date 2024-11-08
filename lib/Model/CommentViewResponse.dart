
import 'dart:convert';
import 'dart:developer';

class CommentViewresp {
  List<CommentviewResponse> success;

  CommentViewresp({
    required this.success,
  });

  factory CommentViewresp.fromJson(Map<String, dynamic> json) {
    return CommentViewresp(
      success: List<CommentviewResponse>.from(json["success"].map((x) => CommentviewResponse.fromJson(x))),
    );
  }
}

class CommentviewResponse {
  int id;
  int topicid;
  int userid;
  String comment;
  String name;
  String profile_pic;
 // String name;


  CommentviewResponse({
    required this.id,
    required this.topicid,
    required this.userid,
    required this.comment,
    required this.name,
    required this.profile_pic,
  });

  factory CommentviewResponse.fromJson(Map<String, dynamic> json) {

    return CommentviewResponse(
      id: json["id"]==null?json['id']="":json['id'],
      topicid: json["videoid"]==null?json['videoid']="":json['videoid'],
      userid: json["userid"]==null?json['userid']="":json['userid'],
      comment: json["comment"]==null?json['comment']="":json['comment'],
      name: json["name"]==null?json['name']="":json['name'],
      profile_pic: json["profile_pic"]==null?json['profile_pic']="":json['profile_pic'],
    );
  }


}
