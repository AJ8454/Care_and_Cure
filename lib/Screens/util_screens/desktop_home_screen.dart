import 'package:care_and_cure/utils/constant.dart';
import 'package:care_and_cure/widgets/dashboard/dashboard.dart';
import 'package:care_and_cure/widgets/doctor_list/doctor_list.dart';
import 'package:care_and_cure/widgets/drawer.dart';
import 'package:flutter/material.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBgDarkColor,
      body: Row(
        children: [
          Expanded(
            flex: _size.width > 1340 ? 2 : 4,
            child: Container(
              color: kBgLightColor,
              child: DrawerList(),
            ),
          ),
          Expanded(
            flex: _size.width > 1340 ? 3 : 5,
            child: DoctorList(),
          ),
          Expanded(
            flex: _size.width > 1340 ? 8 : 10,
            child: Container(
              color: Colors.white,
              child: DashBoard(),
            ),
          ),
        ],
      ),
    );
  }
}
