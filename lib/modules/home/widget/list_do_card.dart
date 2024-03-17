import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motasa_hc_app/core/style/my_color.dart';
import 'package:motasa_hc_app/core/style/my_text_style.dart';
import 'package:motasa_hc_app/modules/home/model/list_do_model.dart';
import 'package:motasa_hc_app/modules/home/widget/status_badge.dart';

class ListDoCard extends StatelessWidget {
  const ListDoCard({super.key, required this.doData});
  final DoData doData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: MyColors.grey, width: 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              onTap: () => Get.toNamed('detail_do',
                  arguments: {"id": doData.doId.toString()}),
              title: Text(doData.doNumber!, style: MyTextStyle.title),
              subtitle: Text(
                doData.doDate!,
                style: MyTextStyle.subtitle,
              ),
              trailing: StatusBadge(text: doData.doStatus!),
            )
          ],
        ),
      ),
    );
  }
}
