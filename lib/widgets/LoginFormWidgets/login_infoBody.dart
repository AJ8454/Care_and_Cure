import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:care_and_cure/utils/responsive_helper.dart';

class LoginInfo extends StatelessWidget {
  const LoginInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: ResponsiveHelper.isDesktop(context)
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        Container(
          width: ResponsiveHelper.isDesktop(context) ? 30.h : 45.h,
          child: FittedBox(
            child: Text(
              'Sign In to \nCare and Cure Hospitality',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          "Find the best Hospitals and HealthCare Services.",
          style: TextStyle(
            fontSize: 8.sp,
            color: Colors.black45,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "Login or Register and access from anywhere.",
          style: TextStyle(
            fontSize: 8.sp,
            color: Colors.black45,
            fontWeight: FontWeight.bold,
          ),
        ),
        ResponsiveHelper.isDesktop(context)
            ? Container(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Image.asset(
                  'assets/images/login01.png',
                ),
              )
            : Container()
      ],
    );
  }
}
