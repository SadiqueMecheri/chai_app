
import 'dart:convert';
import 'dart:developer';


class CommentPOSTResponse {
  String msg;



  CommentPOSTResponse({
    required this.msg,
  });

  factory CommentPOSTResponse.fromJson(Map<String, dynamic> json) {

    return CommentPOSTResponse(
      msg: json["msg"]==null?json['msg']="":json['msg'],
    );
  }


}
