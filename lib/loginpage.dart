import 'package:chai_app/CommonViewModel/CommonViewModel.dart';
import 'package:chai_app/Constants/MainUrls.dart';
import 'package:chai_app/Model/MobilenumberResponse.dart';
import 'package:chai_app/homepage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}


  late CommonViewModel viewModel;
  TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();

class _loginpageState extends State<loginpage> {
  
  @override
  Widget build(BuildContext context) {  
        viewModel = Provider.of<CommonViewModel>(context);
    return Scaffold(  
        appBar: AppBar(  
          title: const Text('Flutter TextField Example'),  
        ),  
        body: Padding(  
            padding: const EdgeInsets.all(15),  
            child: Column(  
              children: <Widget>[  
                const Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'User Name',  
                      hintText: 'Enter Your Name',  
                    ),  
                  ),  
                ),  
                const Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    obscureText: true,  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Password',  
                      hintText: 'Enter Password',  
                    ),  
                  ),  
                ),  
            Container(
  height: 50.0,
  child: ElevatedButton(
    onPressed: () async {
          Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) {
                                        return const homepage(title: "",
                                            );
                                      }));

 final SharedPreferences pref =
                              await SharedPreferences.getInstance();

                         
                                // final Future<Map<String, dynamic>>
                                //     SuccessfullMessage = viewModel.login(
                                //         username.text,
                                //        password.text,
                                //      );

                                // SuccessfullMessage.then((Response) {
                                //   if (Response['status']) {
                                //     MobilenumberResponse ls = Response['user'];
                                //     if (ls.msg == "success") {
                                //       //   snack("Success");
                                //       pref.setString(
                                //           "username",   username.text.toString());
                                //       pref.setString("password", password.text);
                                    
                                //       print("Succfully Logined");
                                //       Navigator.of(context).push(
                                //           MaterialPageRoute(builder: (context) {
                                //         return homepage(title: "",
                                //             );
                                //       }));
                                //     } 
                                //   } else {
                                //  mainurl().  snack(
                                //         "something went wrong,please try again",context);
                                //   }
                                // });
                          
                          




    },
   // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
   // padding: EdgeInsets.all(0.0),
    child: Ink(
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [Color(0xff374ABE), Color(0xff64B6FF)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
        alignment: Alignment.center,
        child: const Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
    ),
  ),
),
              ],  
            )  
        )  
    );  
  }  
}  