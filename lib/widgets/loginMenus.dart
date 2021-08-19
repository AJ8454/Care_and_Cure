import 'package:care_and_cure/utils/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class LoginMenus extends StatelessWidget {
  const LoginMenus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveHelper.isDesktop(context) ? 5.h : 1.h,
          vertical: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _menuItem(title: "About us"),
              _menuItem(title: "Contact us"),
              _menuItem(title: "Help"),
            ],
          ),
          Row(
            children: [
              _menuItem(title: "Sign in", isActive: true),
              _registerButton(),
            ],
          )
        ],
      ),
    );
  }
}

Widget _menuItem({String? title, bool isActive = false}) {
  return Padding(
    padding: EdgeInsets.only(right: 8.w),
    child: Column(
      children: [
        Text(
          "$title",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 8.sp,
            color: isActive ? HexColor("#F50057") : Colors.grey,
          ),
        ),
        SizedBox(height: 6),
        isActive
            ? Container(
                width: 7.w,
                height: 5,
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.h),
                decoration: BoxDecoration(
                  color: HexColor("#F50057"),
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            : SizedBox()
      ],
    ),
  );
}

Widget _registerButton() {
  return Container(
    height: 35,
    width: 13.w,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            spreadRadius: 10,
            blurRadius: 12,
          )
        ]),
    child: Center(
      child: Text(
        "Register",
        style: TextStyle(
          fontSize: 6.sp,
          color: Colors.black45,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
