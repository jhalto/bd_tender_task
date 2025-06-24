import 'package:bd_tender_task/constants/app_colors.dart';
import 'package:bd_tender_task/features/home/views/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class UserGoogleNavBarDemo extends StatefulWidget {
  const UserGoogleNavBarDemo({super.key});

  @override
  State<UserGoogleNavBarDemo> createState() => _UserGoogleNavBarDemoState();
}

class _UserGoogleNavBarDemoState extends State<UserGoogleNavBarDemo> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    Home(),
    Center(child: Text("Home")),
    Center(child: Text("Home")),
    Center(child: Text("Home")),
    Center(child: Text("Home")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F3),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 20, right: 10, left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withAlpha(40)),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 11),
          child: GNav(
            gap: 8,
            iconSize: 0,
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Color(0xffE9F9F2),
            tabBorderRadius: 10,
            tabs: [
              GButton(
                padding: EdgeInsets.zero,
                icon: Icons.circle,
                leading: Container(
                  padding: EdgeInsets.only(
                    top: 14,
                    bottom: 14,
                    left: 12,
                    right: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.transparent,

                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    "assets/images/home.svg",
                    colorFilter: ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
                  ),
                ),
                text: 'Home',
              ),
              GButton(
                padding: EdgeInsets.zero,
                icon: Icons.circle,
                leading: Container(
                  padding: EdgeInsets.only(
                    top: 14,
                    bottom: 14,
                    left: 12,
                    right: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.transparent,

                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    "assets/images/user.svg",
                    colorFilter: ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
                  ),
                ),
                text: 'Profile',
              ),
              GButton(
                padding: EdgeInsets.zero,
                icon: Icons.circle,
                leading: Container(
                  padding: EdgeInsets.only(
                    top: 14,
                    bottom: 14,
                    left: 12,
                    right: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.transparent,

                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        size: 16,
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                ),
                text: 'Cart',
              ),
              GButton(
                padding: EdgeInsets.zero,
                icon: Icons.circle,
                leading: Container(
                  padding: EdgeInsets.only(
                    top: 14,
                    bottom: 14,
                    left: 12,
                    right: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.transparent,

                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Icon(
                        CupertinoIcons.chat_bubble_text_fill,
                        size: 16,
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                ),
                text: 'Chat',
              ),
              
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
