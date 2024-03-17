import 'package:get/get.dart';
import 'package:motasa_hc_app/core/init/auth_manager.dart';
import 'package:motasa_hc_app/modules/home/detail_do_controller.dart';
import 'package:motasa_hc_app/modules/home/home_controller.dart';
import 'package:motasa_hc_app/modules/login/login_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    //Get.lazyPut<SessionService>(() => SessionService());
    Get.lazyPut<AuthManager>(() => AuthManager()); 
    Get.lazyPut<LoginController>(() => LoginController()); 
    Get.lazyPut<HomeController>(() => HomeController()); 
    Get.lazyPut<DetailDoController>(() => DetailDoController()); 
  }}