class HomepageResp {
  List<BannerResponse> banner;
  List<ExamResponse> exam;
  List<EventResponse> events;

  HomepageResp({
    required this.banner,
    required this.exam,
    required this.events,
  });

  factory HomepageResp.fromJson(Map<String, dynamic> json) {
    return HomepageResp(
      banner: List<BannerResponse>.from(
          json["banner"].map((x) => BannerResponse.fromJson(x))),
      exam: List<ExamResponse>.from(
          json["exam"].map((x) => ExamResponse.fromJson(x))),
      events: List<EventResponse>.from(
          json["events"].map((x) => EventResponse.fromJson(x))),
    );
  }
}

class BannerResponse {
  int id;
  String image;

  BannerResponse({
    required this.id,
    required this.image,
  });

  factory BannerResponse.fromJson(Map<String, dynamic> json) {
    return BannerResponse(
      id: json["id"],
      image: json["image"],
    );
  }
}

class ExamResponse {
  int id;
  String name;
  String image;
  String description;
  int isactive;

  ExamResponse({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.isactive,
  });

  factory ExamResponse.fromJson(Map<String, dynamic> json) {
    return ExamResponse(
      id: json["id"],
      name: json["name"],
      image: json["image"],
      description: json["description"],
      isactive: json["isactive"],
    );
  }
}

class EventResponse {
  int id;
  String title;
  String image;
  String description;
  int examid;

  EventResponse({
    required this.id,
    required this.title,
    required this.image,
    required this.description,
    required this.examid,
  });

  factory EventResponse.fromJson(Map<String, dynamic> json) {
    return EventResponse(
      id: json["id"] ?? '',
      title: json["title"] ?? '',
      image: json["image"] ?? '',
      description: json["description"] ?? '',
      examid: json["examid"] ?? '',
    );
  }
}
