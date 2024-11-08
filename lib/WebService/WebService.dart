import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:chai_app/Model/CourseViewResponse.dart';
import 'package:chai_app/Model/HomepageResponse.dart';
import 'package:chai_app/Model/MobilenumberResponse.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../CommonViewModel/CommonViewModel.dart';
import '../Constants/MainUrls.dart';


class webservice {

  Future<Map<String, dynamic>> login(
      String username, String password,) async {
    var result;
    final Map<String, dynamic> loginData = {
      'username': username,
      'password': password,
     
    };
    String url = mainurl().baseurl + "/login.php";
    Response response = await post(Uri.parse(url), body: loginData);
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      var userData = responseData;
      MobilenumberResponse ws = MobilenumberResponse.fromJson(responseData);
      result = {'status': true, 'message': 'Successful', 'user': ws};
    } else {
      result = {
        'status': false,
        'message': json.decode(response.body)['error']
      };
    }
    return result;
  }


  Future<Map<String, dynamic>> gethomepage() async {
    var result;
    // SharedPreferences logindate = await SharedPreferences.getInstance();
    // String username = logindate.getString("username")!;
    String url = mainurl().baseurl + "gethomepage.php";
    final response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      var productData = responseData;
      HomepageResp authUser = HomepageResp.fromJson(responseData);
      result = {'status': true, 'message': 'successful', 'homedata': authUser};
    } else {
      result = {
        'status': false,
        'message': json.decode(response.body)['error']
      };
    }
    return result;
  }

  Future<Map<String, dynamic>> getcourse(String id) async {
    var result3;

    SharedPreferences sh = await SharedPreferences.getInstance();
    String userid = sh.getString("userid")!;
    String url = mainurl().baseurl + "/getcourse.php";
    final response =
        await post(Uri.parse(url), body: {"examid": id, "userid": userid});

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      var productData = responseData;
      Course authUser = Course.fromJson(responseData);

      result3 = {
        'status': true,
        'message': 'successful',
        'coursedata': authUser
      };
      print("succeees");
    } else {
      result3 = {
        'status': false,
        'message': json.decode(response.body)['error']
      };
    }
    return result3;
  }
}