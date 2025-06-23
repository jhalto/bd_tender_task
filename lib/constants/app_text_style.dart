import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle globalTextStyle({
  double fontSize = 14,
  FontWeight fontWeight = FontWeight.normal,
  double lineHeight = 1.2,
  Color color = Colors.black,
  TextDecoration? decoration,
  Color? decorationColor,
  List<Shadow>? shadows
}) {
  return GoogleFonts.oxygen(
    fontSize: fontSize,
    fontWeight: fontWeight,
    height: lineHeight,
    color: color,
    decoration: decoration,
    decorationColor: decorationColor,
    shadows: shadows,
  );
}

TextStyle globalPoppinStyle({
  double fs = 14,
  FontWeight fw = FontWeight.normal,
  double lh = 1.2,
  TextAlign ta = TextAlign.center,
  Color clr = Colors.white,
  List<Shadow>? shadows,
}) {
  return GoogleFonts.poppins(
    fontSize: fs,
    fontWeight: fw,
    height: lh,
    color: clr,
    shadows: shadows,
  );
}
