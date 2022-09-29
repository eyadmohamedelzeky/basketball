import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:basketballpoints/screen.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds:3),(){
      Navigator.of(context).pushReplacementNamed("screens");
    });
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(image:DecorationImage(image:AssetImage("assets/images/basketball.jpg"),fit:BoxFit.fill) ),
        child:Column(
         mainAxisAlignment:MainAxisAlignment.end,
          children: [
            SpinKitFadingCircle(color: Colors.orange,)
          ],
        ),
      ),
    );
  }
}
