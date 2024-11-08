
import 'dart:convert';
import 'dart:developer';

class MYPurchasedCourse {
  List<MyPurchasedcourseResponse> success;

  MYPurchasedCourse({
    required this.success,
  });

  factory MYPurchasedCourse.fromJson(Map<String, dynamic> json) {
    return MYPurchasedCourse(
      success: List<MyPurchasedcourseResponse>.from(json["success"].map((x) => MyPurchasedcourseResponse.fromJson(x))),
    );
  }
}

class MyPurchasedcourseResponse {
  int id;
  int examid;
  String course;
  String description;
  String image;
  String actualprice;
  String offerprice;
  String offertilldate;
  String duration;
  String demovideolink;
  String videolanguage;
  String Isactive;
  String admissiondate;
  String price;
  String transactionid;

  MyPurchasedcourseResponse({
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
    required this.videolanguage,
    required this.Isactive,
    required this.admissiondate,
    required this.price,
    required this.transactionid,
  });

  factory MyPurchasedcourseResponse.fromJson(Map<String, dynamic> json) {

    return MyPurchasedcourseResponse(
      id: json["id"],
      examid: json["examid"],
      course: json["course"],
      description: json["description"],
      image: json["image"],
      actualprice: json["actualprice"],
      offerprice: json["offerprice"],
      offertilldate: json["offertilldate"],
      duration: json["duration"],
      demovideolink: json["demovideolink"],
      videolanguage: json["videolanguage"],
      Isactive: json["Isactive"],
      admissiondate: json["admissiondate"],
      price: json["price"],
      transactionid: json["transactionid"],
    );
  }


}
