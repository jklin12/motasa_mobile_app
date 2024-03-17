import 'package:flutter/material.dart';
import 'package:motasa_hc_app/core/style/my_color.dart';
import 'package:motasa_hc_app/core/style/my_text_style.dart';
import 'package:motasa_hc_app/core/utils/my_helper.dart';
import 'package:motasa_hc_app/core/widget/info_text.dart';
import 'package:motasa_hc_app/modules/home/model/detail_do_model.dart';
import 'package:motasa_hc_app/modules/home/widget/status_badge.dart';

class DetailDoCard extends StatelessWidget {
  const DetailDoCard({super.key, required this.doData});
  final DataDoDetail doData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: MyColors.grey, width: 1)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0,bottom: 8.0),
                child: Row(
                  children: [
                    Text(
                      doData.doNumber!,
                      style: MyTextStyle.title.copyWith(fontSize: 17),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    StatusBadge(text: doData.doStatus!),
                  ],
                ),
              ),
              InfoText(title: "Tanggal Do", body: doData.doDate!),
              InfoText(title: "Nomor Order", body: doData.orderNumber!),
              InfoText(title: "Tanggal Order", body: doData.orderDate!),
              InfoText(title: "Nama Customer", body: doData.custName!),
              InfoText(title: "Telp Customer", body: doData.custPhone!),
              InfoText(title: "Email Customer", body: doData.custEmail!),
              InfoText(title: "Alamat Customer", body: doData.custAddress!),
              InfoText(title: "Catatan", body: doData.doNotes!),
              InfoText(title: "Dibuat Oleh", body: doData.owner!.name!),
              InfoText(
                  title: "Dibuat Pada",
                  body: MyHelper.formatDateTime(doData.createdAt)),
            ],
          ),
        ),
      ),
    );
  }
}
