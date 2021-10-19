import 'package:flutter/material.dart';

import 'package:care_and_cure/utils/constant.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({Key? key}) : super(key: key);

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
            child: Text(
              'MINDFULNESS IN 7 STEPS ',
              style: TextStyle(
                fontSize: 22,
                color: kGreyColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Text(
              'Start your practice',
              style: TextStyle(
                fontSize: 18,
                color: kGreyColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Container(
              child: Wrap(
                children: [
                  Expanded(
                    child: StepsInfo(
                      color: Colors.green[300],
                      stepNo: 'Step 1',
                      description:
                          'Take a deep breath and start to relax yourself, with your eyesopen or closed. Notice the soundsaround you coming and going, and let them be whatever they are.',
                    ),
                  ),
                  Expanded(
                    child: StepsInfo(
                      color: Colors.orange[300],
                      stepNo: 'Step 2',
                      description:
                          'Close your eyes and take all your worries and concerns and pack them into an imaginary bag, and keep it at your side. You can pick it up again later - if you want to.',
                    ),
                  ),
                  Expanded(
                    child: StepsInfo(
                      color: Colors.amber[300],
                      stepNo: 'Step 3',
                      description:
                          'Bring your full awareness into the sensation of your breathing. Sence the cool air coming in and the warm air gaing out. Listen intently to the "whoosh" of  your breath.',
                    ),
                  ),
                  Expanded(
                    child: StepsInfo(
                      color: Colors.pink[300],
                      stepNo: 'Step 4',
                      description:
                          'Start counting your breaths softly count from one to ten, and then start over again. Expect the mind to wander, as it is normal. When it does, just return to counting the breaths again from the start.',
                    ),
                  ),
                  Expanded(
                    child: StepsInfo(
                      color: Colors.blue[300],
                      stepNo: 'Step 5',
                      description:
                          'Get deeply immeresed in the breathing process. Start to notice the volume, speed, warmth, and sound of the breath traveling in and out of your nostrils. Let your mind trace the path of the air from your nostrils to lungs, and back.',
                    ),
                  ),
                  Expanded(
                    child: StepsInfo(
                      color: Colors.red[300],
                      stepNo: 'Step 6',
                      description:
                          'Note your thoughts moving though your mind, trying to pull your attention away from your breath. Let your thoughts be whatever they are. Then discard them. Don\'t drift off with them.',
                    ),
                  ),
                  Expanded(
                    child: StepsInfo(
                      color: Colors.purple[300],
                      stepNo: 'Step 7',
                      description:
                          'Feel a growing sense of calmness within as you keep setting into a state of peaceful awareness. Sit in that state for as long as you want. Finally bring the mindfulness session to an end by operating your eyes, stretching out your hands, and getting up.',
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class StepsInfo extends StatelessWidget {
  final String? stepNo;
  final String? description;
  final Color? color;
  const StepsInfo({
    Key? key,
    required this.stepNo,
    required this.description,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: 280,
          height: 240,
          decoration: BoxDecoration(
              color: color!,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                stepNo!,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  description!,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
