import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:care_and_cure/utils/constant.dart';
import 'package:care_and_cure/widgets/doctor_list/doctor_list.dart';
import 'package:care_and_cure/widgets/drawer.dart';
import 'package:flutter/material.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: bgColor,
              child: DrawerList(),
            ),
          ),
          Expanded(
            flex: 3,
            child: DoctorList(),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.green[500],
            ),
          ),
        ],
      ),
    );
  }
}
