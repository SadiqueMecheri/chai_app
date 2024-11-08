class MobilenumberResponse{
  late String msg,device_id,mobile_no,token,name;
  int userid;
  /// late int expireAt;
  MobilenumberResponse({required this.msg,required this.userid, required this.device_id,required this.mobile_no, required this.token,required this.name});

  factory MobilenumberResponse.fromJson(Map<String, dynamic> Json) {
    return MobilenumberResponse(
      msg: Json['msg'],
      userid: Json['id']==null?Json['id']="":Json['id'],
      device_id: Json['device_id']==null?Json['device_id']="":Json['device_id'],
      mobile_no: Json['mobile_no']==null?Json['mobile_no']="":Json['mobile_no'],
      token: Json['token']==null?Json['token']="":Json['token'],
      name: Json['name']==null?Json['name']="":Json['name'],
    );
  }
}