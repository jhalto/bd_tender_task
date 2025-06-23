import 'package:bd_tender_task/constants/app_text_style.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
class CustomField extends StatelessWidget {
  final String? hint;
  final TextEditingController controller;
  final Widget? prefix;
  const CustomField({
    super.key,
    this.hint,
    this.prefix,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      style: globalTextStyle(color: const Color(0xff9B9B9B)),
      controller: controller,
      decoration: InputDecoration(
         
        prefixIconConstraints: BoxConstraints(
          minWidth: 50,
          
        ),
        prefixIcon: prefix,
        hintText: hint,
        hintStyle: globalTextStyle(
          color: const Color(0xff9B9B9B),
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: const Color(0xffFFFFFF),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 19,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.borderColor),
        ),
      ),
    );
  }
}