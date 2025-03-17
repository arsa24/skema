import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomStyle {
  static fontStyle({
    Color? color = const Color(0xffffffff),
    FontWeight? weight = FontWeight.w600,
    double? size = 18,
  }) {
    return GoogleFonts.inter(color: color, fontWeight: weight, fontSize: size);
  }
}