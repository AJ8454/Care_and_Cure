import 'package:care_and_cure/widgets/loginBody.dart';
import 'package:care_and_cure/widgets/loginMenus.dart';
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
        },
      );
    });
  }
}

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
              padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.h),
              children: [
                LoginMenus(),
                LoginBody(),
              ],
            )
        
        
        
        );
  }
}
