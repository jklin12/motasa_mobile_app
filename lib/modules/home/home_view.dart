import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motasa_hc_app/core/style/my_text_style.dart';
import 'package:motasa_hc_app/modules/home/home_controller.dart';
import 'package:motasa_hc_app/modules/home/widget/list_do_card.dart';
import 'package:motasa_hc_app/modules/home/widget/home_appbar.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HomeAppBar(homeController: controller),
        body: RefreshIndicator(
          onRefresh: () => controller.initData(),
          child: Obx(() => controller.isDataLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : controller.listDoModel.data!.isEmpty
                  ? Center(
                      child: Text(
                        "Tidak ada data delivery oreder",
                        style: MyTextStyle.error,
                      ),
                    )
                  : ListView.builder(
                      itemCount: controller.listDoModel.data!.length,
                      itemBuilder: (context, index) {
                        var item = controller.listDoModel.data![index];
                        return ListDoCard(doData: item);
                      },
                    )),
        ));
  }
}
