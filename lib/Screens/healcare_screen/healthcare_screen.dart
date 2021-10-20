import 'package:care_and_cure/utils/constant.dart';
import 'package:flutter/material.dart';

import 'healthcare_card.dart';
import 'meditation_screen.dart';
import 'protien_diet_screen.dart';
import 'work_out_screen.dart';
import 'yoga_screen.dart';

class HealthCareScreen extends StatelessWidget {
  const HealthCareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackButton(),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Center(
                      child: Wrap(
                        children: [
                          HealthCareCard(
                            imagePath: 'assets/images/meditation.jpg',
                            title: 'Meditation',
                            onClicked: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => MeditationScreen())),
                          ),
                          HealthCareCard(
                            imagePath: 'assets/images/workout.jpg',
                            title: 'Workout',
                            onClicked: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => WorkOutScreen())),
                          ),
                          HealthCareCard(
                            imagePath: 'assets/images/yoga.jpg',
                            title: 'Yoga',
                            onClicked: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => YogaScreen())),
                          ),
                          HealthCareCard(
                            imagePath: 'assets/images/protein.jpg',
                            title: 'Protein Diet',
                            onClicked: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => ProteinDietScreen())),
                          ),
                        ],
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
