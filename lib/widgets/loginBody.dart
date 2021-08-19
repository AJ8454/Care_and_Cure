import 'package:care_and_cure/utils/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class LoginBody extends StatelessWidget {
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
          _infoBody(context),
          _mainImage(context),
          _formWidget(context),
        ],
      );
    }
  }

  Widget _formWidget(context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: double.infinity,
      ),
      width: ResponsiveHelper.isDesktop(context) ? 30.h : 50.h,
      padding: EdgeInsets.all(12),
      child: _formLogin(context),
    );
  }

  Widget _mainImage(context) {
    return Container(
      width: 30.h,
      child: Image.asset(
        'assets/images/login03.png',
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
            SizedBox(width: 15),
            Text(
              "Register here!",
              style: TextStyle(
                fontSize: 8.sp,
                color: HexColor("#F50057"),
                fontWeight: FontWeight.bold,
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

  Widget _formLogin(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter email',
            fillColor: Colors.blueGrey[50],
            filled: true,
            labelStyle: TextStyle(fontSize: 12),
            contentPadding: EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade50),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade50),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            hintText: 'Password',
            counterText: 'Forgot password',
            counterStyle: TextStyle(fontSize: 6.sp),
            suffixIcon: Icon(Icons.visibility_off_outlined,
                color: Colors.grey, size: 20),
            fillColor: Colors.blueGrey[50],
            filled: true,
            labelStyle: TextStyle(fontSize: 12),
            contentPadding: EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey[50]!),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade50),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(height: 25),
        Container(
          width: ResponsiveHelper.isDesktop(context) ? 25.h : 25.h,
          height: ResponsiveHelper.isDesktop(context) ? 3.h : 5.h,
          decoration: BoxDecoration(
            color: HexColor("#F50057"),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.red[100]!,
                spreadRadius: 10,
                blurRadius: 20,
              )
            ],
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: HexColor("#F50057"),
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              child: Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 8.sp),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 3.h),
        Row(
          children: [
            Expanded(
              child: Divider(
                height: 50,
                color: Colors.grey[300],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Or continue with'),
            ),
            Expanded(
              child: Divider(
                height: 50,
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
        //SizedBox(height: 3.h),
        _loginGoogleButton(
          context,
          image: 'assets/images/loginGoogle.jpg',
        )
      ],
    );
  }

  Widget _loginGoogleButton(context, {String? image, bool isActive = false}) {
    return Container(
      width: ResponsiveHelper.isDesktop(context) ? 15.h : 20.h,
      height: ResponsiveHelper.isDesktop(context) ? 3.h : 5.h,
      padding: const EdgeInsets.all(5.0),
      decoration: isActive
          ? BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey[400]!),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.red[100]!,
                  spreadRadius: 2,
                  blurRadius: 15,
                )
              ],
            )
          : BoxDecoration(
              border: Border.all(color: Colors.grey[400]!),
              borderRadius: BorderRadius.circular(30),
            ),
      child: Image.asset(
        image!,
      ),
    );
  }
}
