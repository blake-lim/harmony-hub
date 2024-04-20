import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harmony_hub/services/resource_manager.dart';
import '../home/onboarding_screen.dart';

//------------------------------------------------------------------------------
// 스플래시 스크린
//------------------------------------------------------------------------------
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    animation = Tween(begin: 0.0, end: 500.0).animate(controller!)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const OnbodingScreen()));
          }
        },
      );
    controller!.forward();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: animation!.value,
          height: animation!.value,
          child: Image.asset('assets/images/project_logo.png'),
        ),
      ),
    );
  }
}
