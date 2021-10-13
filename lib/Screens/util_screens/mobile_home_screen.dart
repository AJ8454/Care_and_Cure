import 'package:care_and_cure/widgets/drawer.dart';
import 'package:flutter/material.dart';

class MobileHomeScreen extends StatelessWidget {
  MobileHomeScreen({Key? key}) : super(key: key);

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () => scaffoldKey.currentState!.openDrawer(),
                  icon: Icon(
                    Icons.menu,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
