import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motasa_hc_app/core/style/my_color.dart';
import 'package:motasa_hc_app/core/style/my_text_style.dart';
import 'package:motasa_hc_app/modules/home/detail_do_controller.dart';

class DetailDoForm extends StatelessWidget {
  const DetailDoForm({super.key, required this.controller});

  final DetailDoController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
            child: Text(
              "Pilih Status :",
              style: MyTextStyle.title.copyWith(fontSize: 17),
            ),
          ),
          Obx(() => RadioListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Approve',
                  style: MyTextStyle.subtitle,
                ),
                value: 'Approve',
                groupValue: controller.selectedStatus.value,
                onChanged: (value) {
                  controller.setSelectedStatus(value.toString());
                },
              )),
          Obx(() => RadioListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Reject',
                  style: MyTextStyle.subtitle,
                ),
                value: 'Reject',
                groupValue: controller.selectedStatus.value,
                onChanged: (value) {
                  controller.setSelectedStatus(value.toString());
                },
              )),
          Obx(() => RadioListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Revisi',
                  style: MyTextStyle.subtitle,
                ),
                value: 'Revisi',
                groupValue: controller.selectedStatus.value,
                onChanged: (value) {
                  controller.setSelectedStatus(value.toString());
                },
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: MyColors.mainColor,
                  minimumSize: const Size.fromHeight(40),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              onPressed: () {
                if (controller.selectedStatus.value == 'Approve' ||
                    controller.selectedStatus.value == 'New') {
                  controller.updateData();
                } else {
                  Get.defaultDialog(
                      title: "Catatan ",
                      titleStyle: MyTextStyle.title,
                      textConfirm: "Simpan",
                      textCancel: "Batal",
                      confirmTextColor: Colors.white,
                      buttonColor: MyColors.mainColor,
                      barrierDismissible: false,
                      onConfirm: () {
                        controller.updateData();
                        Get.back();
                      },
                      radius: 10,
                      content: Column(
                        children: [
                          TextFormField(
                              controller: controller.alasanCtrl,
                              decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: MyColors.bordeColor),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  hintStyle: MyTextStyle.formHint),
                              maxLines: 5,
                              keyboardType: TextInputType.text,
                              style: MyTextStyle.formInput),
                        ],
                      ));
                }
              },
              child: Text(
                "Simpan",
                style: MyTextStyle.textButton.copyWith(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
