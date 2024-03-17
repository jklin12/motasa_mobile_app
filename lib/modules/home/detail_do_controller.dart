import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motasa_hc_app/core/init/auth_manager.dart';
import 'package:motasa_hc_app/core/widget/my_snackbar.dart';
import 'package:motasa_hc_app/modules/home/model/detail_do_model.dart';
import 'package:motasa_hc_app/modules/home/service/home_service.dart';

class DetailDoController extends GetxController {
  final homeService = Get.put(HomeService());
  final authManager = Get.put(AuthManager());
  TextEditingController alasanCtrl = TextEditingController();
  late DetailDoModel detailDoModel;
  var isDataLoading = true.obs;
  var dataId = ''.obs;
  var selectedStatus = 'Approve'.obs;

  @override
  void onInit() {
    super.onInit();
    dataId.value = Get.arguments["id"] as String;
    initData();
  }

  @override
  void dispose() {
    /* Discards any resources used by the object. After this is called,
    the object is not in a usable state and should be discarded
    (calls to addListener will throw after the object is disposed) */
    alasanCtrl.dispose();
    super.dispose();
  }

  Future<void> initData() async {
    isDataLoading(true);
    final response =
        await homeService.getDetialDo(authManager.getToken()!, dataId.value);
    detailDoModel = DetailDoModel.fromJson(response);
    selectedStatus.value = detailDoModel.data!.doStatus!;
    isDataLoading(false);
  }

  Future<void> updateData() async {
    if (selectedStatus.value == 'New') {
      MySnackbar.error(message: "Status tidak boleh kosong");
    } else if (selectedStatus.value != 'Approve' && alasanCtrl.text.isEmpty) {
      MySnackbar.error(message: "Alasan tidak boleh kosong");
    } else {
      dynamic postVal = {
        'do_status': selectedStatus.value,
        'history_notes': alasanCtrl.text,
      };
      final response = await homeService.updateDo(
          authManager.getToken()!, dataId.value, postVal);
      alasanCtrl.text = '';
      if (response['status']) {
        initData();
        MySnackbar.success(message: response['message']);
      } else {
        MySnackbar.error(message: "Update data gagal");
      }
    }
  }

  void setSelectedStatus(String value) {
    selectedStatus.value = value;
  }
}
