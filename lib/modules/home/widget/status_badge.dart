import 'package:flutter/material.dart';
import 'package:motasa_hc_app/core/style/my_color.dart';
import 'package:motasa_hc_app/core/style/my_text_style.dart';

class StatusBadge extends StatelessWidget {
  final String text;

  const StatusBadge({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: text == 'New'
            ? MyColors.warning
            : text == 'Approve'
                ? MyColors.success
                : text == 'Revisi'
                    ? MyColors.warning
                    : MyColors.dark,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        text,
        style: MyTextStyle.subtitle.copyWith(color: Colors.white),
      ),
    );
  }
}
