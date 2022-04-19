import 'package:care_and_cure/Provider/appointment_provider.dart';
import 'package:care_and_cure/Screens/appointment_screen/appoint_list_screen.dart';
import 'package:care_and_cure/Screens/user_panel/controllers/MenuController.dart';
import 'package:care_and_cure/Screens/user_panel/screens/main/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'Provider/doctor_list_provider.dart';
import 'Provider/google_signIn_provider.dart';
import 'Screens/initialPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => GoogleSignInProvider()),
        ChangeNotifierProvider(create: (ctx) => DoctorListProvider()),
        ChangeNotifierProvider(create: (ctx) => AppointmentProvider()),
        ChangeNotifierProvider(create: (ctx) => MenuController()),
      ],
      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Care & Cure',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'OnePlus-Regular',
            primarySwatch: Colors.green,
          ),
          initialRoute: '/',
          routes: {
            '/': (ctx) => InitialPage(),
            '/appointment': (ctx) => AppointListScreen(),
            '/mainScreen': (ctx) => MainScreen(),
          },
        );
      }),
    );
  }
}
