import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle {
  static TextStyle mainFont =
      GoogleFonts.roboto();
  static TextStyle loginTitle =
      GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w700, color: const Color(0XFF121212));
  static TextStyle appBar =
      GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500, color: const Color(0XFF121212));
  static TextStyle error =
      GoogleFonts.roboto(fontSize: 14,  color: Colors.red);
  static TextStyle formLabel =
      GoogleFonts.roboto(fontSize: 15,  color: const Color(0XFFB9B9B9));
  static TextStyle formInput =
      GoogleFonts.roboto(fontSize: 15);
  static TextStyle formHint =
      GoogleFonts.roboto(fontSize: 15,  color: const Color(0XFF757575));
  static TextStyle textButton =
      GoogleFonts.roboto(fontSize: 15);
  static TextStyle title =
      GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w500, color: const Color(0XFF121212));
  static TextStyle subtitle =
      GoogleFonts.roboto(fontSize: 15,  color: const Color(0XFF121212));
}
