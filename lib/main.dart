import 'package:care_and_cure/loginScreen/initialPage.dart';
import 'package:care_and_cure/loginScreen/registrationScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Care & Cure',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
          primarySwatch: Colors.green,
          accentColor: Colors.orange,
        ),
        initialRoute: '/',
        routes: {
          '/': (ctx) => InitialPage(),
         // '/RegistrationScreen': (ctx) => RegistrationScreen(),
        },
      );
    });
  }
}
