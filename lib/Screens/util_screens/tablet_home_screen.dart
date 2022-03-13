import 'package:care_and_cure/utils/constant.dart';
import 'package:care_and_cure/widgets/dashboard/dashboard.dart';
import 'package:care_and_cure/widgets/doctor_list/doctor_list.dart';
import 'package:care_and_cure/widgets/drawer.dart';
import 'package:flutter/material.dart';

class TabletHomeScreen extends StatelessWidget {
  TabletHomeScreen({Key? key}) : super(key: key);

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: DrawerList(),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: kBgDarkColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () => scaffoldKey.currentState!.openDrawer(),
                    icon: Icon(
                      Icons.menu,
                    ),
                  ),
                  DoctorList(),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
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
