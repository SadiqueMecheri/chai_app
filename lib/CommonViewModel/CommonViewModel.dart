import 'dart:async';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import '../WebService/WebService.dart';

class CommonViewModel extends ChangeNotifier {
  bool isLoading = false;
  bool isLoadingforbook = false;
  Future<Map<String, dynamic>> login(
      String username, String password,) async {
    isLoading = true;
    notifyListeners();
    final result = await webservice().login(username, password);
    isLoading = false;
    notifyListeners();
    return result;
  }


  late Map<String, dynamic> productDetails;
  Future<Map<String, dynamic>> getproductdetail() async {
    productDetails = await webservice().gethomepage();
    return productDetails;
  }

  late Map<String, dynamic> courses;
  Future<Map<String, dynamic>> getcourse(String id) async {
    courses = await webservice().getcourse(id);
    return courses;
  }
}