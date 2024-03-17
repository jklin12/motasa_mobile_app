import 'package:flutter/material.dart';
import 'package:motasa_hc_app/core/style/my_color.dart';
import 'package:motasa_hc_app/core/style/my_text_style.dart';
import 'package:motasa_hc_app/core/widget/info_text.dart';
import 'package:motasa_hc_app/modules/home/model/detail_do_model.dart';

class DetailshippingCard extends StatelessWidget {
  const DetailshippingCard({super.key, required this.doData});
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
            padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,bottom: 8.0),
                  child: Text(
                    "Detail Pengiriman",
                    style: MyTextStyle.title.copyWith(fontSize: 17),
                  ),
                ),
                InfoText(title: "Jasa Pengiriman", body: doData.courierName!),
                InfoText(title: "Layanan", body: doData.courierServiceName!),
                InfoText(title: "Estimasi Pengiriman", body: doData.shippingDuration!),
                InfoText(title: "Biaya", body: doData.shippingPrice!),
                InfoText(title: "Alamat Pengirim", body: doData.doFromDetail!),
                InfoText(title: "Alamat Penerima", body: doData.doToDetail!),
              ],
            ),
          ),
        ));
  }
}
