import 'package:bd_tender_task/common_widget/custom_button.dart';
import 'package:bd_tender_task/constants/app_colors.dart';
import 'package:bd_tender_task/constants/app_image.dart';
import 'package:bd_tender_task/constants/app_text_style.dart';
import 'package:bd_tender_task/features/home/controllers/home_controller.dart';
import 'package:bd_tender_task/features/order/views/order_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
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
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Find Your Favorite Food",
                                style: globalTextStyle(
                                  fontSize: 38,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 58,
                            width: 58,
                          
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.notifications_none,
                                  size: 40,
                                  color: AppColors.primaryColor,
                                ),
                                Positioned(
                                  right: 10,
                                  top: 5,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: AppColors.whiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: controller.searchController,
                            decoration: InputDecoration(
                              prefixIconConstraints: BoxConstraints(
                                minWidth: 60,
                              ),
                              prefixIcon: Icon(
                                CupertinoIcons.search,
                                color: Color(0xffDA6418),
                              ),
                              hintText: "What do you want to order",
                              hintStyle: globalTextStyle(
                                color: Color(0xffF1BE9B),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0xffFEF6ED),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            color: Color(0xffFEF6ED),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.tune, color: Color(0xffDA6317)),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            AppColors.primaryColor2,
                            AppColors.primaryColor,
                          ],
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/images/demo_pic.png",
                                  width: 80,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Special Deal For October",
                                  style: globalTextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                                SizedBox(height: 24),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetail()));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 12.h,
                                      horizontal: 22.h
                                    ),
                                    decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(16),
                                      color: AppColors.whiteColor,
                                    ),
                                    child: Text("Buy Now",style: globalTextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.primaryColor,
                                    ),),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nearest Restaurant",
                          style: globalTextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "View More",
                          style: globalTextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFF7C32),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: 2,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.whiteColor,
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/demo_pic.png",
                                    width: 80,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(height: 30.h),
                                  Text(
                                    "Vegan Resto",
                                    style: globalTextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text("12 Mins"),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Menu",
                          style: globalTextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "View More",
                          style: globalTextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFF7C32),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.products.length,
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
                                  Image.asset(
                                    product.images,
                                    width: 80,
                                    height: 60,
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          product.title,
                                          style: globalTextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          product.distance,
                                          style: globalTextStyle(
                                            color: AppColors.dotColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    product.price.toString(),
                                    style: globalTextStyle(
                                      color: Color(0xffFF7C32),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20),
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
