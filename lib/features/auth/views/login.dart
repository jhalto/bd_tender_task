import 'package:bd_tender_task/common_widget/custom_button.dart';
import 'package:bd_tender_task/common_widget/custom_form_field.dart';
import 'package:bd_tender_task/constants/app_text_style.dart';
import 'package:bd_tender_task/features/auth/controllers/login_controller.dart';
import 'package:bd_tender_task/features/auth/views/sign_up.dart';
import 'package:bd_tender_task/features/navbar/views/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_image.dart';

class Login extends StatelessWidget {
  Login({super.key});
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
                key: controller.formKey2,
                child: Column(
                  children: [
                    screenHeight && keyboardOpen
                        ? SizedBox()
                        : SizedBox(height: keyboardOpen ? 60.h : 100.h),

                    screenHeight && keyboardOpen
                        ? SizedBox()
                        : Text(
                            "FoodNinja",
                            style: TextStyle(
                              fontSize: 40,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700,
                              height: 1.2,
                              foreground: Paint()
                                ..shader =
                                    LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        AppColors.primaryColor2,
                                        AppColors.primaryColor,
                                      ],
                                    ).createShader(
                                      Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                                    ),
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
                            "Login",
                            style: globalTextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                    SizedBox(height: keyboardOpen ? 15.h : 30.h),

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
                    SizedBox(height: 10.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password",
                        style: globalTextStyle(
                          color: AppColors.dotColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Spacer(),
                    CustomButton(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          AppColors.primaryColor2,
                          AppColors.primaryColor,
                        ],
                      ),
                      onTap: () {
                        if (controller.formKey2.currentState!.validate()) {
                          Get.offAll(() => UserGoogleNavBarDemo());
                        }
                      },
                      title: "Login",
                      fontColor: AppColors.whiteColor,
                    ),
                    SizedBox(height: 20.h),
                    TextButton(
                      onPressed: () {
                        Get.off(() => SignUp());
                      },
                      child: Text(
                        "Don't have an account?",
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
