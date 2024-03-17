import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motasa_hc_app/core/style/my_text_style.dart';
import 'package:motasa_hc_app/modules/login/login_controller.dart';
import 'package:motasa_hc_app/modules/login/widget/login_button.dart';
import 'package:motasa_hc_app/modules/login/widget/login_form.dart';

class LoginView extends StatelessWidget {
    LoginView({super.key});

final controller = Get.find<LoginController>();
  final formkey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login to Motasa",
                style: MyTextStyle.loginTitle,
              ),
              const SizedBox(
                height: 30,
              ),
              LoginForm(controller: controller, formKey: formkey),
              const SizedBox(
                height: 30,
              ),
              LoginButton(controller: controller, formKey: formkey)

            ],
          ),
        ),
      ),
    );
  }
}
