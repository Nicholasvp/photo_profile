import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_profile/src/home/controller/home_controller.dart';
import 'package:photo_profile/src/home/pages/home_page.dart';

void main() {
  Get.put(HomeController(), permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Photo Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
