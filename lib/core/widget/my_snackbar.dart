import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motasa_hc_app/core/style/my_color.dart';


class MySnackbar {
  static void success({
    String message = "",
  }) {
    Get.showSnackbar(
      GetSnackBar(
        margin: const EdgeInsets.all(8),
        title: "Selamat",
        message: message,
        backgroundColor: MyColors.mainColor,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  static void error({
    String message = "",
  }) {
    Get.showSnackbar(
      GetSnackBar(
        margin: const EdgeInsets.all(8),
        title: "Maaf",
        message: message,
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
