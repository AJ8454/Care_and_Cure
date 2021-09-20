import 'package:care_and_cure/Screens/Dashboard/covidScreen/covid_screen.dart';
import 'package:flutter/material.dart';

import 'package:care_and_cure/utils/extensions.dart';

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
                child: DashBoardItems(
                  imgPath: "assets/images/covid.jpg",
                  label: "Covid 19",
                  onClicked: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CovidScreen(),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: DashBoardItems(
                  imgPath: "assets/images/virtualAppop.png",
                  label: "Appointment",
                  onClicked: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CovidScreen(),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: DashBoardItems(
                  imgPath: "assets/images/healthy.png",
                  label: "Health Care",
                  onClicked: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CovidScreen(),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: DashBoardItems(
                  imgPath: "assets/images/labTest.png",
                  label: "Lab Testing",
                  onClicked: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CovidScreen(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                child: DashBoardItems(
                  imgPath: "assets/images/ambulance.png",
                  label: "Ambulance",
                  onClicked: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CovidScreen(),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: DashBoardItems(
                  imgPath: "assets/images/ambulance.png",
                  label: "Ambulance",
                  onClicked: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CovidScreen(),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: DashBoardItems(
                  imgPath: "assets/images/ambulance.png",
                  label: "Ambulance",
                  onClicked: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CovidScreen(),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: DashBoardItems(
                  imgPath: "assets/images/morgue.png",
                  label: "Morgue Storage",
                  onClicked: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CovidScreen(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DashBoardItems extends StatelessWidget {
  final String? imgPath;
  final String? label;
  final VoidCallback? onClicked;
  const DashBoardItems({
    Key? key,
    this.imgPath,
    this.label,
    this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: GestureDetector(
        onTap: onClicked,
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
      ),
    ).addNeumorphism();
  }
}
