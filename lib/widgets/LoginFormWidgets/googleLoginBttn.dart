import 'package:care_and_cure/Provider/google_signIn_provider.dart';
import 'package:care_and_cure/utils/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class GoogleLoginButton extends StatefulWidget {
  final String? image;
  final bool? isActive;

  GoogleLoginButton({Key? key, required this.image, required this.isActive})
      : super(key: key);

  @override
  _GoogleLoginButtonState createState() => _GoogleLoginButtonState();
}

class _GoogleLoginButtonState extends State<GoogleLoginButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final provider =
            Provider.of<GoogleSignInProvider>(context, listen: false);
        provider.login();
      },
      child: Container(
        width: ResponsiveHelper.isDesktop(context) ? 15.h : 20.h,
        height: ResponsiveHelper.isDesktop(context) ? 3.h : 5.h,
        padding: const EdgeInsets.all(5.0),
        decoration: widget.isActive!
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
          widget.image!,
        ),
      ),
    );
  }
}
