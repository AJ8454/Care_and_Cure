import 'package:care_and_cure/Screens/util_screens/desktop_home_screen.dart';
import 'package:care_and_cure/utils/constant.dart';
import 'package:care_and_cure/widgets/LoginFormWidgets/googleLoginBttn.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:care_and_cure/utils/responsive_helper.dart';

class LoginForm extends StatefulWidget {
  final VoidCallback flip;
  const LoginForm({
    Key? key,
    required this.flip,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController? emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  bool _showPassword = false, showloading = false;
  final _signupformKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _signupformKey,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextFormField(
          controller: emailController,
          key: const ValueKey('Email'),
          autocorrect: false,
          textCapitalization: TextCapitalization.none,
          enableSuggestions: false,
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter email';
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.blueGrey,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.blueGrey,
                )),
            hintText: 'Email',
            suffixIcon: IconButton(
              padding: const EdgeInsets.only(right: 15.0),
              icon: const Icon(Icons.clear),
              color: Colors.black,
              iconSize: 18.0,
              onPressed: () async {
                await Future<dynamic>.delayed(
                    const Duration(milliseconds: 100));
                emailController!.clear();
              },
            ),
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          controller: passwordController,
          key: const ValueKey('password'),
          obscureText: !_showPassword,
          autocorrect: false,
          textCapitalization: TextCapitalization.none,
          enableSuggestions: false,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter password';
            } else {
              return null;
            }
          },
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.blueGrey,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.blueGrey,
                )),
            hintText: 'Enter Password.',
            suffixIcon: IconButton(
              padding: const EdgeInsets.only(right: 15.0),
              icon: Icon(
                !_showPassword ? Icons.visibility_off : Icons.visibility,
              ),
              color: Colors.deepOrange,
              iconSize: 18.0,
              onPressed: () => setState(
                () => _showPassword = !_showPassword,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Forgot Password',
              style: TextStyle(fontSize: 5.sp),
            ),
          ),
        ),
        SizedBox(height: 2.h),
        showloading
            ? Center(
                child: CircularProgressIndicator(backgroundColor: Colors.pink),
              )
            : Container(
                width: ResponsiveHelper.isDesktop(context) ? 25.h : 25.h,
                height: ResponsiveHelper.isDesktop(context) ? 3.h : 5.h,
                decoration: BoxDecoration(
                  color: kPinkColor,
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
                  onPressed: () async {
                    final isValid = _signupformKey.currentState!.validate();
                    if (!isValid) {
                      return;
                    }
                    _signupformKey.currentState!.save();
                    setState(() => showloading = true);
                    Future.delayed(Duration(seconds: 3), () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => DesktopHomeScreen(),
                      ));
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: kPinkColor,
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
              onTap: widget.flip,
              child: Text(
                " Register here!",
                style: TextStyle(
                  fontSize: 6.sp,
                  color: kPinkColor,
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
                    fontSize:
                        ResponsiveHelper.isDesktop(context) ? 6.sp : 7.sp),
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
      ]),
    );
  }
}
