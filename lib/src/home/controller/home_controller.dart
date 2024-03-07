import 'dart:io';

import 'package:camera_camera/camera_camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_profile/src/home/pages/home_page.dart';
import 'package:photo_profile/src/home/pages/preview_page.dart';
import 'package:photo_profile/src/home/store/home_store.dart';

class HomeController extends GetxController {
  final HomeStore store = HomeStore();
  final ImagePicker picker = ImagePicker();

  @override
  void onInit() {
    store.nameController.text = 'Nicholas Vinicius';
    store.emailController.text = 'nicholas@email.com';
    super.onInit();
  }

  void showPreview({required File file}) {
    print(store.image.path);
    Get.to(PreviewPage(file: file));
  }

  void openCamera() {
    Get.to(
      CameraCamera(
        cameraSide: CameraSide.back,
        onFile: (file) {
          showPreview(file: file);
        },
      ),
    );
  }

  void changePhoto(File file) {
    store.image = file;
    Get.to(const HomePage());
    showSnackbarSuccess();
  }

  Future<void> openGallery() async {
    XFile? file = await picker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      store.image = File(file.path);
      Get.back();
      showSnackbarSuccess();
    }
  }

  void showSnackbarSuccess() {
    Get.snackbar(
      '',
      'Imagem alterada',
      titleText: const Row(
        children: [
          Text('Sucesso'),
          Icon(
            Icons.check_circle,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
