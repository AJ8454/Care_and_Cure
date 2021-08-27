import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:care_and_cure/utils/responsive_helper.dart';

class MobileLoginInfo extends StatelessWidget {
  const MobileLoginInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveHelper.isDesktop(context) ? 30.h : 45.h,
      child: FittedBox(
        child: Text(
          'Welcome to \nCare and Cure Hospitality',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
