class ProfileResponse{
  late String mobile_no,name,email,profile_pic;
  /// late int expireAt;
  ProfileResponse({required this.mobile_no,required this.name, required this.email, required this.profile_pic});

  factory ProfileResponse.fromJson(Map<String, dynamic> Json) {
    return ProfileResponse(
      mobile_no: Json['mobile_no'],
      name: Json['name']==null?Json['name']="":Json['name'],
      email: Json['email']==null?Json['email']="":Json['email'],
      profile_pic: Json['profile_pic']==null?Json['profile_pic']="":Json['profile_pic'],
    );
  }
}