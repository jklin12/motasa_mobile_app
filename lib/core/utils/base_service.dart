import 'package:get/get_connect/connect.dart';

class BaseService extends GetConnect {
  @override
  void onInit() {
    httpClient.timeout = const Duration(seconds: 10);
  }
}
