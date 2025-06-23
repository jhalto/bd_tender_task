import 'package:bd_tender_task/constants/app_colors.dart';
import 'package:bd_tender_task/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, required this.title, this.clr, this.pv, this.radius, this.fs, this.fw});
 final VoidCallback onTap;
 final String title;
 final Color? clr;
 final double? pv;
 final double? radius;
 final double? fs;
 final FontWeight? fw;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      
      padding: EdgeInsets.symmetric(
        vertical:pv?? 18.h
      ),
      onPressed: onTap,
      color:clr?? AppColors.primaryColor,
      
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(radius?? 10)
      ),
     child: Text(title,style: globalTextStyle(
      fontSize:fs?? 16.sp,
      fontWeight:fw?? FontWeight.w700,

     ),),
    );
  }
}