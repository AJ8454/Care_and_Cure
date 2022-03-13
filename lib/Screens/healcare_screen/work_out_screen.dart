import 'package:flutter/material.dart';

import 'package:care_and_cure/utils/constant.dart';

class WorkOutScreen extends StatelessWidget {
  const WorkOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButton(),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Text(
              'FITNESS',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Text(
              'Exercises to do at home.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: MediaQuery.of(context).size.height * 0.77,
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: ListView(
              children: [
                WorkoutCard(
                  title: 'Stair pushup',
                  description:
                      'Firmly place your hands on a step. Your hands should be directly under your shoulders. Push your toes into the floor and extend your legs into a plank position. You should feel your core (stomach) muscles working. Inhale and bend your elbows. Lower your body until your chest is just above the stairs. Exhale while straightening your arms and raising your body back to the starting position. Keep your neck and back in a neutral position during this exercise. Don\'t let your hips drop.',
                  imagePath: 'assets/images/Stairpushup.jpg',
                ),
                WorkoutCard(
                  title: 'Stair crawl',
                  description:
                      'Begin at the bottom of the stairs, on your arms and legs. Your arms should be under your shoulders, knees below your hips, and feet resting on the ground. Slowly raise up to your toes, lifting both knees off the floor. Keep your back in a neutral position. Begin crawling up the steps by moving your opposite arm and leg forward at the same time to the next step. Alternate this cross-body pattern for the desired number of stairs you wish to climb.',
                  imagePath: 'assets/images/Staircrawl.jpg',
                ),
                WorkoutCard(
                  title: 'Stair lunge',
                  description:
                      'Facing away from the stairs, stand tall with your feet shoulder-distance apart. Move your left leg backward to rest on a step. Inhale, bend your knees, and lower your body. Exhale, extend your legs, and return to a standing position. Your front knee should be over the center of your front foot. Don\'t let the knee bend beyond your toes. Repeat for the desired number of repetitions before switching to the right leg.',
                  imagePath: 'assets/images/Stairlunge.jpg',
                ),
                WorkoutCard(
                  title: 'Step up',
                  description:
                      'Stand tall with feet shoulder-distance apart in front of a step. Tighten your core and place your left foot flat on the step while keeping your spine straight. Shift your weight onto the left foot. Breathe out, and press through the left heel and move your body up onto the step. Place the right foot entirely on the step. Breathe in, and then slowly lower your left foot to the floor. Return the right foot to the floor to return to your standing position. Continue leading with the left leg until you\'ve completed your goal number of repetitions, then repeat on the opposite side.',
                  imagePath: 'assets/images/Stepup.jpg',
                ),
                WorkoutCard(
                  title: 'Side step',
                  description:
                      'Stand with your feet parallel (sideways) to the stairs. The right side of your body should be closest to the stairs. Using your stomach muscles, bend your knees and hips slightly. Step the right foot onto the first step, followed by the left. Continue this stepping motion until you\'ve reached the top of the stairs. Always lead with the high foot. Don\'t let your feet cross while climbing up the stairs. Walk back down the stairs and repeat the sequence with the left leg leading.',
                  imagePath: 'assets/images/Sidestep.jpeg',
                ),
                WorkoutCard(
                  title: 'Crab walks',
                  description:
                      'Sit at the top of the stairs with your feet 2 steps below you and about shoulder-width apart. Bring your arms behind you and place your hands on the top step. Slowly raise your hips off the ground, tightening your glute muscles as you do so. Press your hands into the step to keep your shoulders from rising upward. Begin crawling down the steps by moving your opposite arm and leg forward at the same time to the next step. Alternate this cross-body crab walk down the desired number of stairs.',
                  imagePath: 'assets/images/Crabwalks.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WorkoutCard extends StatelessWidget {
  final String? imagePath;
  final String? title;
  final String? description;
  const WorkoutCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 90,
        height: 270,
        padding: const EdgeInsets.all(30),
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
        child: Row(
          children: [
            Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                color: kBgDarkColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Image(
                image: AssetImage(imagePath!),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 600,
                  child: Text(
                    description!,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
