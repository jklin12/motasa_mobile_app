import 'package:flutter/material.dart';
import 'package:get/get.dart';  
import 'package:motasa_hc_app/core/style/my_color.dart';
import 'package:motasa_hc_app/core/style/my_text_style.dart';
import 'package:motasa_hc_app/modules/login/login_controller.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      {super.key, required this.controller, required this.formKey});

  final GlobalKey<FormState> formKey;
  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => controller.isLoginLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: MyColors.mainColor,
                    minimumSize: const Size.fromHeight(40),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    controller.login();
                  }
                },
                child: Text(
                  "Log in",
                  style: MyTextStyle.textButton.copyWith(color: Colors.white),
                ))),
      ],
    );
  }
}
