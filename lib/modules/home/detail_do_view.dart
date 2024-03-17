import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motasa_hc_app/core/style/my_text_style.dart';
import 'package:motasa_hc_app/modules/home/detail_do_controller.dart';
import 'package:motasa_hc_app/modules/home/widget/detail_do_card.dart';
import 'package:motasa_hc_app/modules/home/widget/detail_do_form.dart';
import 'package:motasa_hc_app/modules/home/widget/detail_product_table.dart';
import 'package:motasa_hc_app/modules/home/widget/detail_shipping_card.dart';

class DetailDoView extends StatelessWidget {
  DetailDoView({super.key});
  final controller = Get.find<DetailDoController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Detail Delivery Order",
            style: MyTextStyle.appBar,
          ),
        ),
        body: RefreshIndicator(
          onRefresh: () => controller.initData(),
          child: Obx(() => controller.isDataLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      DetailDoCard(doData: controller.detailDoModel.data!),
                      DetailshippingCard(
                          doData: controller.detailDoModel.data!),
                      DetailProductTable(
                          doData: controller.detailDoModel.data!),
                      controller.detailDoModel.data!.doStatus != 'Approve'
                          ? DetailDoForm(
                              controller: controller,
                            )
                          : Container()
                    ],
                  ),
                )),
        ));
  }
}
