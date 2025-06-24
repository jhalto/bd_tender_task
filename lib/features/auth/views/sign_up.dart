import 'package:bd_tender_task/common_widget/custom_button.dart';
import 'package:bd_tender_task/common_widget/custom_form_field.dart';
import 'package:bd_tender_task/constants/app_text_style.dart';
import 'package:bd_tender_task/features/auth/controllers/login_controller.dart';
import 'package:bd_tender_task/features/auth/views/login.dart';
import 'package:bd_tender_task/features/navbar/views/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../common_widget/custom_field.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_image.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    var keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    var screenHeight = MediaQuery.of(context).size.height < 700;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: [
          Image.asset(
            ImagePath.bg,
            width: double.infinity,
            height: 180,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    screenHeight && keyboardOpen
                        ? SizedBox()
                        : SizedBox(height: keyboardOpen ? 40.h : 100.h),
                
                    screenHeight && keyboardOpen
                        ? SizedBox()
                        : Text(
                            "FoodNinja",
                            style: TextStyle(
                              fontSize: 40,
                              fontStyle: FontStyle.italic,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w700,
                              height: 1.2,
                            ),
                          ),
                    screenHeight && keyboardOpen
                        ? SizedBox()
                        : Text(
                            "Deliver Favorite Food",
                            style: globalTextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                    screenHeight && keyboardOpen
                        ? SizedBox()
                        : SizedBox(height: keyboardOpen ? 30.h : 60.h),
                    screenHeight && keyboardOpen
                        ? SizedBox()
                        : Text(
                            "Sign Up For Free",
                            style: globalTextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                    SizedBox(height: keyboardOpen ? 15.h : 30.h),
                    CustomFormField(
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Name is required';
                        }
                        return null;
                      },
                      prefixIcon: Icon(
                        Icons.person,
                        color: AppColors.primaryColor,
                        size: 24,
                      ),
                      hint: "Name",
                      controller: controller.nameController,
                    ),
                    SizedBox(height: 10.h),
                
                    CustomFormField(
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Email is required';
                        }
                        if (!GetUtils.isEmail(value.trim())) {
                          return 'Enter a valid email';
                        }
                        return null;
                      },
                      prefixIcon: Icon(
                        Icons.email,
                        color: AppColors.primaryColor,
                        size: 24,
                      ),
                      controller: controller.emailController,
                      hint: "Email",
                    ),
                    SizedBox(height: 10.h),
                
                    CustomFormField(
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Password is required';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                      prefixIcon: Icon(
                        Icons.lock,
                        color: AppColors.primaryColor,
                        size: 24,
                      ),
                      controller: controller.passwordController,
                      hint: "Password",
                      isPassword: true,
                    ),
                
                    SizedBox(
                      height: screenHeight && keyboardOpen
                          ? 5
                          : keyboardOpen
                          ? 10.h
                          : 30.h,
                    ),
                    Obx(
                      () => Row(
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(300),
                            onTap: () {
                              controller.keepMeSigned.value =
                                  !controller.keepMeSigned.value;
                            },
                            child: Ink(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black12),
                                color: controller.keepMeSigned.value
                                    ? AppColors.primaryColor
                                    : Colors.white,
                              ),
                              child: Icon(
                                Icons.done,
                                size: 16,
                                color: controller.keepMeSigned.value
                                    ? AppColors.whiteColor
                                    : Colors.transparent,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Keep Me Signed In",
                            style: globalTextStyle(color: AppColors.dotColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Obx(
                      () => Row(
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(300),
                            onTap: () {
                              controller.emailMe.value =
                                  !controller.emailMe.value;
                            },
                            child: Ink(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black12),
                                color: controller.emailMe.value
                                    ? AppColors.primaryColor
                                    : Colors.white,
                              ),
                              child: Icon(
                                Icons.done,
                                size: 16,
                                color: controller.emailMe.value
                                    ? AppColors.whiteColor
                                    : Colors.transparent,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Email Me About Special Pricing",
                            style: globalTextStyle(color: AppColors.dotColor),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    CustomButton(
                      gradient: LinearGradient(colors: [
                        AppColors.primaryColor2,
                        AppColors.primaryColor,
                      ]),
                      fontColor: AppColors.whiteColor,
                      onTap: () {
                      if(controller.formKey.currentState!.validate()){
                        Get.offAll(()=>UserGoogleNavBarDemo());
                      }
                    }, title: "Create Account"),
                    SizedBox(height: 20.h),
                    TextButton(
                      onPressed: () {
                        Get.off(() => Login());
                      },
                      child: Text(
                        "Already have an account?",
                        style: globalTextStyle(
                          decoration: TextDecoration.underline,
                          color: AppColors.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          lineHeight: 1.5,
                          decorationColor: AppColors.primaryColor,
                        ),
                      ),
                    ),
                    screenHeight && keyboardOpen
                        ? SizedBox()
                        : SizedBox(height: keyboardOpen ? 0 : 20.h),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
