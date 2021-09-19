import 'package:care_and_cure/utils/extensions.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: menuItems("assets/images/covid.jpg", "Covid 19"),
              ),
              Expanded(
                child:
                    menuItems("assets/images/virtualAppop.png", "Appointment"),
              ),
              Expanded(
                child: menuItems("assets/images/healthy.png", "Health Care"),
              ),
              Expanded(
                child: menuItems("assets/images/appop.png", "Appointment"),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                child: menuItems("assets/images/labTest.png", "Lab Testing"),
              ),
              Expanded(
                child:
                    menuItems("assets/images/virtualAppop.png", "Appointment"),
              ),
              Expanded(
                child: menuItems("assets/images/ambulance.png", "Ambulance"),
              ),
              Expanded(
                child: menuItems("assets/images/morgue.png", "Morgue Storage"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget menuItems(String? imgPath, String? label) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imgPath!,
                width: double.infinity,
              ),
            ),
            Positioned(
              left: 10.0,
              right: 10.0,
              bottom: 10,
              child: Center(
                child: Text(
                  label!,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ).addNeumorphism();
  }
}
