import 'package:care_and_cure/widgets/LoginFormWidgets/googleLoginBttn.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:care_and_cure/utils/responsive_helper.dart';

class LoginForm extends StatelessWidget {
  final VoidCallback flip;
  const LoginForm({
    Key? key,
    required this.flip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
          suffixIcon:
              Icon(Icons.visibility_off_outlined, color: Colors.grey, size: 20),
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
      Align(
        alignment: Alignment.topRight,
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Forgot Password',
            style: TextStyle(
                fontSize: ResponsiveHelper.isDesktop(context) ? 6.sp : 9.sp),
          ),
        ),
      ),
      SizedBox(height: 2.h),
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
      SizedBox(height: 2.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "If you don't have an account you can ",
            style: TextStyle(
              fontSize: 6.sp,
              color: Colors.black45,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: flip,
            child: Text(
              " Register here!",
              style: TextStyle(
                fontSize: 6.sp,
                color: HexColor("#F50057"),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 2.h),
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
            child: Text(
              'Or continue with',
              style: TextStyle(
                  fontSize: ResponsiveHelper.isDesktop(context) ? 6.sp : 7.sp),
            ),
          ),
          Expanded(
            child: Divider(
              height: 50,
              color: Colors.grey[300],
            ),
          ),
        ],
      ),
      GoogleLoginButton(
        image: 'assets/images/loginGoogle.jpg',
        isActive: false,
      ),
    ]);
  }
}
