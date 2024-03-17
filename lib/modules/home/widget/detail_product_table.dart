import 'package:flutter/material.dart';
import 'package:motasa_hc_app/core/style/my_color.dart';
import 'package:motasa_hc_app/core/style/my_text_style.dart';
import 'package:motasa_hc_app/modules/home/model/detail_do_model.dart';

class DetailProductTable extends StatelessWidget {
  const DetailProductTable({super.key, required this.doData});
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
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Detail Produk",
                  style: MyTextStyle.title.copyWith(fontSize: 17),
                ),
              ),
              DataTable(
                columnSpacing: 30.0,
                columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'No.',
                      style: MyTextStyle.title,
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Name',
                      style: MyTextStyle.title,
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Qty',
                      style: MyTextStyle.title,
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Price',
                      style: MyTextStyle.title,
                    ),
                  ),
                ],
                rows: doData.products!
                    .asMap()
                    .entries
                    .map((product) => DataRow(cells: [
                          DataCell(Text(
                            (product.key + 1).toString(),
                            style: MyTextStyle.subtitle,
                          )),
                          DataCell(Text(product.value.productName ?? '',
                              style: MyTextStyle.subtitle)),
                          DataCell(Text(product.value.productQty.toString(),
                              style: MyTextStyle.subtitle)),
                          DataCell(Text(product.value.productPrice ?? '',
                              style: MyTextStyle.subtitle)),
                        ]))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
