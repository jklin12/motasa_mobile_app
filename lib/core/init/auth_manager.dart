
import 'package:get/get.dart';
import 'package:motasa_hc_app/core/init/cache_manager.dart';

class AuthManager extends GetxController with CacheManager {
  final isLogged = false.obs;
  final deviceId = ''.obs;

  void logOut() {
    isLogged.value = false;
    removeToken();
    Get.deleteAll();
    Get.offAllNamed('/login');
  }

  void login(String token) async {
    isLogged.value = true;
    //Token is cached 
    await saveToken(token); 
  }

   
  void checkLoginStatus() {
    final token = getToken();
    if (token != null) {
      isLogged.value = true;
    }
  }

}
