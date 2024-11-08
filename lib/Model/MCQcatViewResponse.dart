
import 'dart:convert';
import 'dart:developer';

class Mcqcat {
  List<McqcatResponse> success;

  Mcqcat({
    required this.success,
  });

  factory Mcqcat.fromJson(Map<String, dynamic> json) {
    return Mcqcat(
      success: List<McqcatResponse>.from(json["success"].map((x) => McqcatResponse.fromJson(x))),
    );
  }
}

class McqcatResponse {
  int id;
  String name;
  String image;

  McqcatResponse({
    required this.id,
    required this.name,
    required this.image,
  });

  factory McqcatResponse.fromJson(Map<String, dynamic> json) {

    return McqcatResponse(
      id: json["id"],
      name: json["name"],
      image: json["image"],
    );
  }


}
