import 'package:motasa_hc_app/core/config/api_config.dart';
import 'package:motasa_hc_app/core/utils/base_service.dart';

class HomeService extends BaseService {
  final String logoutUrl = '${ApiConfig.baseUrl}/logout';
  final String listDoUrl = '${ApiConfig.baseUrl}/do';

  Future<dynamic> getListDo(String token) async {
    final response = await get(listDoUrl, headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });

    if (response.statusCode != null) {
      return response.body;
    } else {
      return null;
    }
  }

  Future<dynamic> getDetialDo(String token, String id) async {
    final response = await get("$listDoUrl/$id", headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    //print(response.body);
    if (response.statusCode != null) {
      return response.body;
    } else {
      return null;
    }
  }

  Future<dynamic> updateDo(String token, String id, dynamic postVal) async {
    final response = await put("$listDoUrl/$id", postVal, headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    //print(response.body);
    if (response.statusCode != null) {
      return response.body;
    } else {
      return null;
    }
  }

  Future<dynamic> logout(String token) async {
    final response = await post(logoutUrl, [], headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });

    if (response.statusCode != null) {
      return response.body;
    } else {
      return null;
    }
  }
}
