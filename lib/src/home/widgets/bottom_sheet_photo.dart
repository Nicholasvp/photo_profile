import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_profile/src/home/controller/home_controller.dart';

class BottomSheetPhoto extends StatelessWidget {
  const BottomSheetPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Wrap(
        children: [
          ListTile(
            leading: const Icon(Icons.camera_alt),
            title: const Text('Câmera'),
            onTap: () {
              controller.openCamera();
            },
          ),
          ListTile(
            leading: const Icon(Icons.image),
            title: const Text('Galeria'),
            onTap: () {
              controller.openGallery();
            },
          ),
        ],
      ),
    );
  }
}
