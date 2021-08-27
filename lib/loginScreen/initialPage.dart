import 'package:care_and_cure/utils/responsive_helper.dart';
import 'package:care_and_cure/widgets/loginBody.dart';
import 'package:care_and_cure/widgets/loginMenus.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(
                horizontal: 4.h,
                vertical: ResponsiveHelper.isDesktop(context) ? 2.h : 0),
            children: [
              LoginMenus(),
              LoginBody(),
            ],
          ),
        ));
  }
}
