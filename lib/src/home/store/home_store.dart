import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class HomeStore {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final Rx<File> _image = File('').obs;
  get image => _image.value;
  set image(value) => _image.value = value;
}
