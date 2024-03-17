import 'package:get/get.dart';
import 'package:motasa_hc_app/core/init/auth_manager.dart';
import 'package:motasa_hc_app/core/widget/my_snackbar.dart';
import 'package:motasa_hc_app/modules/home/model/list_do_model.dart';
import 'package:motasa_hc_app/modules/home/service/home_service.dart';

class HomeController extends GetxController {
  final homeService = Get.put(HomeService());
  final authManager = Get.put(AuthManager());
  late ListDoModel listDoModel;
  var isDataLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    initData();
  }

  Future<void> initData() async {
    isDataLoading(true);
    final response = await homeService.getListDo(authManager.getToken()!);
    listDoModel = ListDoModel.fromJson(response);
    //print(listDoModel.data!.length);
    isDataLoading(false);
  }

  void logout() async {
    final response = await homeService.logout(authManager.getToken()!);
    if (response) {
      MySnackbar.success(message: response['message']);
      authManager.logOut();
    }
  }
}
