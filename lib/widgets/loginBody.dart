import 'dart:math';
import 'package:care_and_cure/utils/responsive_helper.dart';
import 'package:care_and_cure/widgets/loginForm.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool isBack = true;
  double? angle = 0;

  void _flip() {
    setState(() {
      angle = (angle! + pi) % (2 * pi);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (ResponsiveHelper.isDesktop(context)) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _infoBody(context),
          _mainImage(context),
          _formWidget(context),
        ],
      );
    } else if (ResponsiveHelper.isTablet(context)) {
      return Column(
        children: [
          _infoBody(context),
          _mainImage(context),
          _formWidget(context),
        ],
      );
    } else {
      return Column(
        children: [
          ResponsiveHelper.isDesktop(context)
              ? _infoBody(context)
              : _infoMob(context),
          _mainImage(context),
          _formWidget(context),
        ],
      );
    }
  }

  Widget _formWidget(context) {
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: angle),
        duration: Duration(seconds: 1),
        builder: (BuildContext context, double val, __) {
          if (val >= (pi / 2)) {
            isBack = false;
          } else {
            isBack = true;
          }
          return Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(val),
              child: Container(
                child: isBack
                    ? Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey[400]!),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[100]!,
                              spreadRadius: 2,
                              blurRadius: 15,
                            )
                          ],
                        ),
                        width: ResponsiveHelper.isDesktop(context) ||
                                ResponsiveHelper.isTablet(context)
                            ? 30.h
                            : 90.h,
                        height: ResponsiveHelper.isDesktop(context) ||
                                ResponsiveHelper.isTablet(context)
                            ? 35.h
                            : 50.h,
                        padding: EdgeInsets.all(12),
                        margin: EdgeInsets.only(top: 15, bottom: 15),
                        child: LoginForm(),
                      )
                    : Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()..rotateY(pi),
                        child: Container(
                          width:
                              ResponsiveHelper.isDesktop(context) ? 30.h : 90.h,
                          height:
                              ResponsiveHelper.isDesktop(context) ? 35.h : 50.h,
                          padding: EdgeInsets.all(12),
                          margin: EdgeInsets.only(top: 15, bottom: 15),
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(child: Text('surprice..')),
                        ),
                      ),
              ));
        });
  }

  Widget _mainImage(context) {
    return Image.asset(
      'assets/images/login03.png',
      width: ResponsiveHelper.isDesktop(context) ? 30.h : 40.h,
      height: ResponsiveHelper.isDesktop(context) ? 30.h : 25.h,
    );
  }

  Widget _infoMob(context) {
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

  Widget _infoBody(context) {
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
          "If you don't have an account",
          style: TextStyle(
            fontSize: 8.sp,
            color: Colors.black45,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You can",
              style: TextStyle(
                fontSize: 8.sp,
                color: Colors.black45,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: _flip,
              child: Text(
                " Register here!",
                style: TextStyle(
                  fontSize: 8.sp,
                  color: HexColor("#F50057"),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
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
