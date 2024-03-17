import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motasa_hc_app/core/init/auth_manager.dart';
import 'package:motasa_hc_app/core/widget/my_snackbar.dart';
import 'package:motasa_hc_app/modules/login/service/login_service.dart';

class LoginController extends GetxController {
  final loginService = Get.put(LoginService());
  final authManager = Get.put(AuthManager());
  var isSecureText = true.obs;
  var isLoginLoading = false.obs;

  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  Future<void> login() async {
    isLoginLoading(true);
    final response =
        await loginService.login(emailCtrl.text, passwordCtrl.text);
    isLoginLoading(false);

    if (response != null) {
      if (response['status']) {
        MySnackbar.success(message: response['message']);
        //simpan data ke local storage
        authManager.login(response['access_token']);
        Get.offAndToNamed("/home");
      } else {
        MySnackbar.error(message: response['message']);
      }
    } else {
      MySnackbar.error(message: "terjadi Kesalahan saat login");
    }
    isLoginLoading(false);
  }

  void showHidePassword() {
    if (isSecureText.value) {
      isSecureText(false);
    } else {
      isSecureText(true);
    }
  }
}
