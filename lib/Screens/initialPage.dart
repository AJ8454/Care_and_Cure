import 'package:care_and_cure/Provider/google_signIn_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'desktop_home_screen.dart';
import 'loginScreen/auth_screen.dart';
import 'mobile_home_screen.dart';


class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     double _width = MediaQuery.of(context).size.width;
   // double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          final provider = Provider.of<GoogleSignInProvider>(context);
          if (provider.isSigningIn) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData) {
            return (_width > 500) ? const DesktopHomeScreen() : const MobileHomeScreen();
          } else {
            return AuthScreen();
          }
        },
      ),
    );
  }
}
