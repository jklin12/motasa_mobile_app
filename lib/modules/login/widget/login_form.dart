import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:motasa_hc_app/core/style/my_color.dart';
import 'package:motasa_hc_app/core/style/my_text_style.dart';
import 'package:motasa_hc_app/modules/login/login_controller.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key, required this.controller, required this.formKey});

  final GlobalKey<FormState> formKey;
  final LoginController controller;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: MyTextStyle.formLabel,
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
              controller: controller.emailCtrl,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: MyColors.bordeColor),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: "Masukan Email.....",
                  hintStyle: MyTextStyle.formHint),
              validator: (val) {
                if (val!.isEmpty) {
                  return "Email harus di isi!";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.text,
              style: MyTextStyle.formInput),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Password",
            style: MyTextStyle.formLabel,
          ),
          const SizedBox(
            height: 5,
          ),
          Obx(
            () => TextFormField(
                controller: controller.passwordCtrl,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        icon: Icon(
                          controller.isSecureText.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: MyColors.grey,
                        ),
                        onPressed: () {
                          controller.showHidePassword();
                        }),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: MyColors.bordeColor),borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "*****",
                    hintStyle: MyTextStyle.formHint),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Password harus di isi!";
                  } else {
                    return null;
                  }
                },
                obscureText: controller.isSecureText.value,
                keyboardType: TextInputType.text,
                style: MyTextStyle.formInput),
          ),
        ],
      ),
    );
  }
}
