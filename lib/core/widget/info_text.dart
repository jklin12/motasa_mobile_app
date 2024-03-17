import 'package:flutter/material.dart';
import 'package:motasa_hc_app/core/style/my_text_style.dart';

class InfoText extends StatelessWidget {
  const InfoText({super.key, required this.title, required this.body});

  final String title;
  final String body;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,bottom: 5.0),
      child: RichText(
        text: TextSpan(
            text: title,
            style: MyTextStyle.subtitle,
            children: <TextSpan>[
              TextSpan(
                text: ' : $body',
                style: MyTextStyle.title,
              )
            ]),
      ),
    );
  }
}
