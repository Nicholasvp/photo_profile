import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_profile/src/home/controller/home_controller.dart';
import 'package:photo_profile/src/home/widgets/change_photo_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => CircleAvatar(
                  radius: 80,
                  backgroundImage: FileImage(controller.store.image),
                  child: controller.store.image.path == ''
                      ? const Icon(
                          Icons.person,
                          size: 80,
                        )
                      : null,
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              const ChangePhotoButton(),
              TextFormField(
                  controller: controller.store.nameController,
                  decoration: const InputDecoration(
                    labelText: 'Nome',
                  )),
              TextFormField(
                controller: controller.store.emailController,
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
