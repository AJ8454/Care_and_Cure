import 'package:care_and_cure/utils/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class LoginMenus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveHelper.isDesktop(context) ? 5.h : 1.h,
          vertical: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ResponsiveHelper.isDesktop(context) ? mainMenus(context) : SizedBox(),
          Row(
            children: [
              _menuItem(context, title: "Sign in", isActive: true),
              _registerButton(context),
            ],
          )
        ],
      ),
    );
  }

  Widget mainMenus(
    context,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _menuItem(context, title: "About us"),
        _menuItem(context, title: "Contact us"),
        _menuItem(context, title: "Help"),
      ],
    );
  }
}

Widget _menuItem(context, {String? title, bool isActive = false}) {
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
                width: ResponsiveHelper.isDesktop(context) ? 7.w : 10.w,
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

Widget _registerButton(context) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 35,
      width: ResponsiveHelper.isDesktop(context) ? 13.w : 18.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 10,
              blurRadius: 12,
            )
          ]),
      child: Center(
        child: Text(
          "Register",
          style: TextStyle(
            fontSize: ResponsiveHelper.isDesktop(context) ? 6.sp : 7.sp,
            color: Colors.black45,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
