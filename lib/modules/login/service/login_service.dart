import 'package:motasa_hc_app/core/config/api_config.dart';
import 'package:motasa_hc_app/core/utils/base_service.dart';


class LoginService extends BaseService {
  final String loginUrl = '${ApiConfig.baseUrl}/login';

  Future<dynamic> login(String email, String password) async {
    var postVal = {'email': email, 'password': password};
    final response = await post(loginUrl, postVal);
    //print(response.body);
    if (response.statusCode != null) {
      return response.body;
    } else {
      return null;
    }
  }
}
