import 'package:bd_tender_task/constants/app_text_style.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';


class CustomFormField extends StatefulWidget {
  final String? hint;
  final TextEditingController controller;
  final bool isPassword;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  const CustomFormField({
    super.key,
    this.hint,
    required this.controller,
    this.prefixIcon,
    this.isPassword = false, this.validator,
  });

  @override
  CustomFormFieldState createState() => CustomFormFieldState();
}

class CustomFormFieldState extends State<CustomFormField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      validator: widget.validator,
      style: globalTextStyle(color: Color(0xff9B9B9B)),
      controller: widget.controller,
      obscureText: widget.isPassword ? _isObscured : false,
      decoration: InputDecoration(
        prefixIconConstraints: BoxConstraints(
          minWidth: 50
        ),
        prefixIcon: widget.prefixIcon,
        hintText: widget.hint,
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
        suffixIcon:
            widget.isPassword
                ? IconButton(
                  icon: Icon(
                    _isObscured ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black87,
                    size: 18,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                )
                : null,
      ),
    );
  }
}
