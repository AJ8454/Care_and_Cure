import 'package:care_and_cure/Screens/Dashboard/dashboard.dart';
import 'package:care_and_cure/utils/responsive_helper.dart';
import 'package:care_and_cure/widgets/Doctor_list/list_of_Doctors.dart';
import 'package:care_and_cure/widgets/sideMenu_widgets/side_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: ResponsiveHelper(
        mobile: DashBoard(),
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: ListOfDoctors(),
            ),
            Expanded(
              flex: 9,
              child: DashBoard(), //DoctorScreen(),
            ),
          ],
        ),
        desktop: Row(
          children: [
            Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: SideMenu(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 3 : 5,
              child: ListOfDoctors(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 8 : 10,
              child: DashBoard(), //DoctorScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
