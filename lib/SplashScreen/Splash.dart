import 'package:chai_app/homepage.dart';
import 'package:chai_app/loginpage.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  late bool newuser = true;

  @override
  void initState() {
    super.initState();
    check_if_already_login();

    print("ininit state");
  }

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logoWidth: 100,
      logo: Image.asset(
        'assets/images/playstore.png',
      ),
      backgroundColor: kIsWeb ? Colors.black : Colors.white,
      showLoader: false,
      navigator: newuser == false
          ? homepage(title: 'data',)
          : loginpage(),
      durationInSeconds: 3,
    );
  }

  void check_if_already_login() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    newuser = (pref.getBool('login') ?? true);
    print("newwwww----" + newuser.toString());

    setState(() {
      newuser = (pref.getBool('login') ?? true);
    });

    // if (newuser == false) {
    //   ///String? name= pref.getString("userid");
    //   Navigator.pushReplacement(
    //       context,
    //       new MaterialPageRoute(
    //           builder: (context) => BottomNavigationScreen()));
    // }
  }
}
