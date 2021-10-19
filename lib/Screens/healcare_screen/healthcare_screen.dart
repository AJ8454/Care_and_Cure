import 'package:care_and_cure/utils/constant.dart';
import 'package:flutter/material.dart';

import 'healthcare_card.dart';
import 'meditation_screen.dart';

class HealthCareScreen extends StatelessWidget {
  const HealthCareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButton(),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Row(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                        height: 480,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          color: kBgDarkColor,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Wrap(
                          children: [
                            HealthCareCard(
                              imagePath: 'assets/images/meditation.jpg',
                              title: 'Meditation',
                              onClicked: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MeditationScreen())),
                            ),
                            HealthCareCard(
                              imagePath: 'assets/images/workout.jpg',
                              title: 'Workout',
                              onClicked: () {},
                            ),
                            HealthCareCard(
                              imagePath: 'assets/images/yoga.jpg',
                              title: 'Yoga',
                              onClicked: () {},
                            ),
                            HealthCareCard(
                              imagePath: 'assets/images/protein.jpg',
                              title: 'Protein Diet',
                              onClicked: () {},
                            ),
                            HealthCareCard(
                              imagePath: 'assets/images/ambulance.png',
                              title: 'chest',
                              onClicked: () {},
                            ),
                            HealthCareCard(
                              imagePath: 'assets/images/ambulance.png',
                              title: 'chest',
                              onClicked: () {},
                            ),
                            HealthCareCard(
                              imagePath: 'assets/images/ambulance.png',
                              title: 'chest',
                              onClicked: () {},
                            ),
                            HealthCareCard(
                              imagePath: 'assets/images/ambulance.png',
                              title: 'chest',
                              onClicked: () {},
                            ),
                          ],
                        )),
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
