import 'package:bd_tender_task/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_text_style.dart';

class CustomButton2 extends StatelessWidget {
  const CustomButton2({
    super.key,
    required this.onTap,
    required this.title,
    this.color,
    this.paddingVertical,
    this.radius,
    this.fontSize,
    this.fontWeight,
    this.gradient,
    this.width,
    this.fontColor,
    this.paddingHorizontal,
  });

  final VoidCallback onTap;
  final String title;
  final Color? color;
  final Color? fontColor;
  final double? paddingVertical;
  final double? radius;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Gradient? gradient;
  final double? width;
  final double? paddingHorizontal;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        padding: EdgeInsets.symmetric(
          vertical: paddingVertical ?? 18.h,
          horizontal: paddingHorizontal ?? 22.h,
        ),
        decoration: BoxDecoration(
         color: gradient == null ? (color ?? AppColors.primaryColor) : null,
          gradient: gradient,
          borderRadius: BorderRadius.circular(radius ?? 10),
        ),

        child: Text(
          title,
          style: globalTextStyle(
            color: fontColor ?? Colors.black,
            fontSize: fontSize ?? 16.sp,
            fontWeight: fontWeight ?? FontWeight.w700,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          softWrap: false,
        ),
      ),
    );
  }
}
