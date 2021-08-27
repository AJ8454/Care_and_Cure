import 'dart:math';
import 'package:care_and_cure/widgets/LoginFormWidgets/loginForm.dart';
import 'package:care_and_cure/widgets/LoginFormWidgets/register_form.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:care_and_cure/utils/responsive_helper.dart';

class LoginFormWidget extends StatefulWidget {
  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  bool isBack = true;
  double? angle = 0;

  void _flip() {
    setState(() {
      angle = (angle! + pi) % (2 * pi);
    });
  }

  @override
  Widget build(BuildContext context) {
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
                        child: LoginForm(
                          flip: _flip,
                        ),
                      )
                    : Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()..rotateY(pi),
                        child: Container(
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
                          child: RegisterForm(
                            flip: _flip,
                          ),
                        ),
                      ),
              ));
        });
  }
}
