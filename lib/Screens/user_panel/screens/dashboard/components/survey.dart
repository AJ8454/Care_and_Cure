import 'package:care_and_cure/Screens/user_panel/screens/dashboard/components/survey_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class HospitalSurvey extends StatelessWidget {
  HospitalSurvey({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> survey = [
    {"income": 305, "title": "This Month's Expenses"},
    {"income": 1450, "title": "6 Month's Expenses"},
    {"income": 8000, "title": "This Year's Expenses"}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hospital Survey",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 17.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Divider(),
          SizedBox(
            height: 10.0,
          ),
          Container(
            width: double.infinity,
            child: getSurveyWidgets(survey, context),
          ),
          SizedBox(
            height: 10.0,
          ),
          Divider(),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              RotatedBox(
                quarterTurns: 3,
                child: Text(
                  "Growth (Rs)",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 17.0),
                ),
              ),
              Expanded(child: SurveyChart()),
            ],
          )
        ],
      ),
    );
  }
}

Widget getSurveyWidgets(
    List<Map<String, dynamic>> survey, BuildContext context) {
  if (Responsive.isMobile(context) || Responsive.isTablet(context))
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: survey
            .map(
              (item) => Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Column(
                  children: [
                    Text(
                      "Rs ${item['income']}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                    Text(
                      item['title'],
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            )
            .toList());
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: survey
          .map(
            (item) => Column(
              children: [
                Text(
                  "Rs ${item['income']}",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
                Text(
                  item['title'],
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0),
                ),
              ],
            ),
          )
          .toList());
}
