import 'package:flutter/material.dart';

class mainurl {
  final String baseurl = "https://mainapp.cyralearnings.com/";
  final String bannerurl =
      "https://mainapp.cyralearnings.com/bannerexamimages/";
  final String banner2url = "https://mainapp.cyralearnings.com/banner2/";
  final String examurl = "https://mainapp.cyralearnings.com/bannerexamimages/";
  final String courseimageurl =
      "https://mainapp.cyralearnings.com/courseimages/";
  final String mcqcategoryimage =
      "https://mainapp.cyralearnings.com/mcqcategoryimage/";
  final String thumbnailimageurl =
      "https://mainapp.cyralearnings.com/thumbanailimages/";
  final String noteurl = "https://mainapp.cyralearnings.com/note/";
  final String profilepic = "https://mainapp.cyralearnings.com/profilepic/";
  final String mcqimages = "https://mainapp.cyralearnings.com/mcqimages/";
  final String questionimages =
      "https://mainapp.cyralearnings.com/admin/questionimages/";

  // final String noteurl = "https://app.cyralearnings.com/notes/1/";
  ///final String answerkeyurl = "https://app.cyralearnings.com/mcqanswerkey/1/";

  final String demoquizqustio = "https://cyralearnings.com/lms/mcq/";


  void snack(String msg,BuildContext context) {
    final snackBar = SnackBar(
      content: Text(msg),
      behavior: SnackBarBehavior.floating,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}
