import 'package:care_and_cure/widgets/LoginFormWidgets/Login_mobileInfo.dart';
import 'package:care_and_cure/widgets/LoginFormWidgets/login_formWidget.dart';
import 'package:care_and_cure/widgets/LoginFormWidgets/login_infoBody.dart';
import 'package:flutter/material.dart';
import 'package:care_and_cure/utils/responsive_helper.dart';
import 'package:sizer/sizer.dart';

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    if (ResponsiveHelper.isDesktop(context)) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LoginInfo(),
          _mainImage(context),
          LoginFormWidget(),
        ],
      );
    } else if (ResponsiveHelper.isTablet(context)) {
      return Column(
        children: [
          LoginInfo(),
          _mainImage(context),
          LoginFormWidget(),
        ],
      );
    } else {
      return Column(
        children: [
          ResponsiveHelper.isMobile(context) ? LoginInfo() : MobileLoginInfo(),
          _mainImage(context),
          LoginFormWidget(),
        ],
      );
    }
  }

  Widget _mainImage(context) {
    return Image.asset(
      'assets/images/login03.png',
      width: ResponsiveHelper.isDesktop(context) ? 30.h : 40.h,
      height: ResponsiveHelper.isDesktop(context) ? 30.h : 25.h,
    );
  }
}
