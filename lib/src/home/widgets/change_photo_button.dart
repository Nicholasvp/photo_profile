import 'package:camera_camera/camera_camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_profile/src/home/controller/home_controller.dart';
import 'package:photo_profile/src/home/widgets/bottom_sheet_photo.dart';

class ChangePhotoButton extends StatelessWidget {
  const ChangePhotoButton({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return InkWell(
      radius: 20,
      onTap: () {
        Get.bottomSheet(
          const BottomSheetPhoto(),
          backgroundColor: Colors.white,
        );
      },
      child: const SizedBox(
        width: 200,
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Alterar foto de perfil'),
            Icon(
              Icons.edit,
            ),
          ],
        ),
      ),
    );
  }
}
