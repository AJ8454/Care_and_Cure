import 'package:care_and_cure/Provider/google_signIn_provider.dart';
import 'package:care_and_cure/utils/responsive_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'util_screens/desktop_home_screen.dart';
import 'loginScreen/auth_screen.dart';
import 'util_screens/mobile_home_screen.dart';
import 'util_screens/tablet_home_screen.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            if (ResponsiveHelper.isDesktop(context)) {
              return const DesktopHomeScreen();
            } else if (ResponsiveHelper.isTablet(context)) {
              return TabletHomeScreen();
            } else {
              return  MobileHomeScreen();
            }
          } else {
            return AuthScreen();
          }
        },
      ),
    );
  }
}
