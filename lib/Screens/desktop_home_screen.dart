import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:care_and_cure/widgets/drawer.dart';
import 'package:flutter/material.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: DrawerList(),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.orange[500],
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            color: Colors.green[500],
          ),
        ),
      ],
    );
  }
}
