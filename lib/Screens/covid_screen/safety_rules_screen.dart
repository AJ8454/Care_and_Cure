import 'package:care_and_cure/utils/constant.dart';
import 'package:flutter/material.dart';

class SafetyRulesScreen extends StatelessWidget {
  const SafetyRulesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButton(
            onPressed: () =>
                Navigator.of(context).popUntil((route) => route.isFirst),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: 250,
                    height: 220,
                    decoration: BoxDecoration(
                        color: Colors.white,
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
                        children: [
                          Image(
                            image: AssetImage('assets/images/washHand.png'),
                            height: 160,
                          ),
                          Text(
                            'Hand Hygiene',
                            style: TextStyle(
                              fontSize: 20,
                              color: kTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: 250,
                    height: 220,
                    decoration: BoxDecoration(
                        color: Colors.white,
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
                        children: [
                          Image(
                            image: AssetImage('assets/images/wear-mask2.png'),
                            height: 160,
                          ),
                          Text(
                            'Wear Mask',
                            style: TextStyle(
                              fontSize: 20,
                              color: kTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: 250,
                    height: 220,
                    decoration: BoxDecoration(
                        color: Colors.white,
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
                        children: [
                          Image(
                            image:
                                AssetImage('assets/images/social_distance.jpg'),
                            height: 160,
                          ),
                          Text(
                            'Social Distancing',
                            style: TextStyle(
                              fontSize: 20,
                              color: kTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: 250,
                    padding: const EdgeInsets.all(12.0),
                    height: 320,
                    decoration: BoxDecoration(
                        color: Colors.amber[200],
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Do\'s',
                              style: TextStyle(
                                fontSize: 30,
                                color: kGreyColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '- Cover your nose and mouth with handkerchief/tissue while sneezing and coughing.\n- Avoid crowded places.\n- Stay more than one arm\'s length distance from personsat public place.\n- Drink plenty of water/liquids and eat nutritious food.',
                            style: TextStyle(
                              fontSize: 22,
                              color: kGreyColor,
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: 250,
                    padding: const EdgeInsets.all(12.0),
                    height: 320,
                    decoration: BoxDecoration(
                        color: Colors.amber[200],
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Don\'t s',
                              style: TextStyle(
                                fontSize: 30,
                                color: kGreyColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '- Do not Touch your eyes, nose or mouth.\n- Avoid shaking hands while greeting.\n- Don\'t Spit at public places.\n- Don\'t Dispose used napkin or tissue paper in open areas.\n- Don\'t take medicines without consulting doctor.',
                            style: TextStyle(
                              fontSize: 22,
                              color: kGreyColor,
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
