import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harmony_hub/constans/styles.dart';
import 'package:harmony_hub/views/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme:
          ThemeData(fontFamily: 'Pretendard', scaffoldBackgroundColor: gray999),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
