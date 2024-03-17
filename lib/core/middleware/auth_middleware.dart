import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:motasa_hc_app/core/init/auth_manager.dart';

class AuthMiddleware extends GetMiddleware {
  final authManager = Get.put(AuthManager());

  @override
  RouteSettings? redirect(String? route) {
    authManager.checkLoginStatus();
    bool loginStatus = authManager.isLogged.value;
    //print("login status :$loginStatus");
    if (!loginStatus) {
      return const RouteSettings(
          name: '/login'); // redirect ke halaman login jika user belum login
    }
    return super.redirect(route);
  }
}
