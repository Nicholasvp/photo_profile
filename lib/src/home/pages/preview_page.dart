import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_profile/src/home/controller/home_controller.dart';
import 'package:photo_profile/src/home/pages/home_page.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({super.key, required this.file});

  final File file;

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.file(
              file,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            bottom: 100,
            left: 120,
            child: IconButton(
              onPressed: () {
                controller.changePhoto(file);
              },
              icon: const Icon(
                Icons.check_circle,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 200,
            child: IconButton(
              onPressed: () {
                Get.to(const HomePage());
              },
              icon: const Icon(
                Icons.cancel,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
