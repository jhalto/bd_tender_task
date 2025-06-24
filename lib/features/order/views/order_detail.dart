import 'package:bd_tender_task/common_widget/custom_button.dart';
import 'package:bd_tender_task/common_widget/custom_button2.dart';
import 'package:bd_tender_task/constants/app_colors.dart';
import 'package:bd_tender_task/constants/app_text_style.dart';
import 'package:bd_tender_task/features/home/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constants/app_image.dart';

class OrderDetail extends StatelessWidget {
  OrderDetail({super.key});
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ImagePath.bg,
            width: double.infinity,
            height: 180,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: InkWell(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                borderRadius: BorderRadius.circular(16),
                                child: Ink(
                                  padding: EdgeInsetsDirectional.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0xffFDF5ED),
                                  ),
                                  child: Icon(
                                    CupertinoIcons.back,
                                    color: Color(0xffDA6317),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 16.h),
                            Text(
                              "Order details",
                              style: globalTextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 30.h),
                            SizedBox(
                              child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: controller.products.length >= 3
                                    ? 3
                                    : controller.products.length,
                                itemBuilder: (context, index) {
                                  var product = controller.products[index];
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 12,
                                        horizontal: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: AppColors.whiteColor,
                                      ),
                                      child: Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(12),
                                            child: Image.asset(
                                              product.images,
                                              width: 54,
                                              height: 54,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(width: 20),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  product.title,
                                                  style: globalTextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  product.des,
                                                  style: globalTextStyle(
                                                    color: AppColors.dotColor,
                                                  ),
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  "\$ ${product.price.toString()}",
                                                  style: globalTextStyle(
                                                    color: AppColors.primaryColor,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w900,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Obx(
                                            () => Row(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    product.count.value--;
                                                  },
                                                  child: Container(
                                                    padding: EdgeInsets.all(6),
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffEBFBF2),
                                                      borderRadius:
                                                          BorderRadius.circular(8),
                                                    ),
                                                    child: Icon(
                                                      Icons.remove,
                                                      color: AppColors.primaryColor,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 12),
                                                Text(
                                                  product.count.value.toString(),
                                                  style: globalTextStyle(
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                SizedBox(width: 12),
                                                GestureDetector(
                                                  onTap: () {
                                                    product.count.value++;
                                                  },
                                                  child: Container(
                                                    padding: EdgeInsets.all(6),
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(8),
                                                    ),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: AppColors.whiteColor,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(
                        top: 20,
                        bottom: 16,
                        right: 10,
                        left: 10,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.primaryColor2,
                            AppColors.primaryColor,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            ImagePath.bg,
                            width: double.infinity,
                            height: 190,
                            fit: BoxFit.cover,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Sub Total",
                                          style: globalTextStyle(
                                            color: AppColors.whiteColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          "120 \$",
                                          style: globalTextStyle(
                                            color: AppColors.whiteColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Delivery Charge",
                                          style: globalTextStyle(
                                            color: AppColors.whiteColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          "10 \$",
                                          style: globalTextStyle(
                                            color: AppColors.whiteColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Discount",
                                          style: globalTextStyle(
                                            color: AppColors.whiteColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          "10 \$",
                                          style: globalTextStyle(
                                            color: AppColors.whiteColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 30.h),
                                                    
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Total",
                                          style: globalTextStyle(
                                            color: AppColors.whiteColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        Text(
                                          "150 \$",
                                          style: globalTextStyle(
                                            color: AppColors.whiteColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    
                                  ],
                                ),
                              ),
                              CustomButton2(
                                      radius: 16,
                                      width: double.infinity,
                                      color: AppColors.whiteColor,
                                      onTap: () {},
                                      title: "Place My Order",
                                      fontColor: AppColors.primaryColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
