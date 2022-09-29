import 'dart:async';
import 'package:basketballpoints/cubit/counter_cubit.dart';
import 'package:basketballpoints/screen.dart';
import 'package:basketballpoints/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(CounterBIncrement()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: {
          "screens": (context) => Screens(),
        },
      ),
    );
  }
}
