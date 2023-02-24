import 'package:bmi_animation_calculator/views/screens/homepage.dart';
import 'package:bmi_animation_calculator/views/screens/splashScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp(),);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>SplashScreen(),
        'homepage':(context)=>HomePage(),
      },
    );
  }
}
