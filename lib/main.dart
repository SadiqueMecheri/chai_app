import 'package:chai_app/CommonViewModel/CommonViewModel.dart';
import 'package:chai_app/SplashScreen/Splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return ChangeNotifierProvider<CommonViewModel>(
      create: (context) => CommonViewModel(),
      child: MaterialApp(

          /// restorationScopeId: "desktop-demo1",
          debugShowCheckedModeBanner: false,
          title: 'Cyra Learnings',
          // theme: ThemeData(
          //   primarySwatch: Colors.blue,
          // ),
          theme: ThemeData(
                  
                  primarySwatch: Colors.blue,
                ),
          home: const splashscreen() // Replace with the actual YouTube video ID
          ),
    );
  }
}
