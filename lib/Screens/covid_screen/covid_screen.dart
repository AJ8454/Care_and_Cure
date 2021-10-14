import 'package:care_and_cure/utils/constant.dart';
import 'package:flutter/material.dart';

import 'safety_rules_screen.dart';

class CovideScreen extends StatefulWidget {
  const CovideScreen({Key? key}) : super(key: key);

  @override
  State<CovideScreen> createState() => _CovideScreenState();
}

class _CovideScreenState extends State<CovideScreen> {
  String? _chosenValue;

  String? infectedValue() {
    if (_chosenValue == 'India') {
      return '34,036,356';
    } else if (_chosenValue == 'America') {
      return '45,560,713';
    } else if (_chosenValue == 'Brazil') {
      return '21,597,949';
    } else if (_chosenValue == 'Russia') {
      return '7,892,980';
    } else if (_chosenValue == 'France') {
      return '7,069,089';
    } else if (_chosenValue == 'Italy') {
      return '4,709,753';
    } else if (_chosenValue == 'Germany') {
      return '4,357,616';
    } else if (_chosenValue == 'Canada') {
      return '1,671,481';
    } else if (_chosenValue == 'Austria') {
      return '786,711';
    } else if (_chosenValue == 'China') {
      return '96,478';
    } else if (_chosenValue == null) {
      return '0';
    }
  }

  String? deathsValue() {
    if (_chosenValue == 'India') {
      return '451,665';
    } else if (_chosenValue == 'America') {
      return '5,675';
    } else if (_chosenValue == 'Brazil') {
      return '4,584';
    } else if (_chosenValue == 'Russia') {
      return '123,12,2';
    } else if (_chosenValue == 'France') {
      return '456,15,12';
    } else if (_chosenValue == 'Italy') {
      return '15,485';
    } else if (_chosenValue == 'Germany') {
      return '352,245';
    } else if (_chosenValue == 'Canada') {
      return '28,376';
    } else if (_chosenValue == 'Austria') {
      return '11,143';
    } else if (_chosenValue == 'China') {
      return '4,636';
    } else if (_chosenValue == null) {
      return '0';
    }
  }

  String? recoveredValue() {
    if (_chosenValue == 'India') {
      return '33,373,108';
    } else if (_chosenValue == 'America') {
      return '152,152,1';
    } else if (_chosenValue == 'Brazil') {
      return '11,258';
    } else if (_chosenValue == 'Russia') {
      return '954,145,35';
    } else if (_chosenValue == 'France') {
      return '74,951';
    } else if (_chosenValue == 'Italy') {
      return '32,657';
    } else if (_chosenValue == 'Germany') {
      return '456,852,48';
    } else if (_chosenValue == 'Canada') {
      return '6,248,521';
    } else if (_chosenValue == 'Austria') {
      return '9,65,741';
    } else if (_chosenValue == 'China') {
      return '65,178';
    } else if (_chosenValue == null) {
      return '0';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButton(),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  child: Image(
                    image: AssetImage('assets/images/wear_mask.png'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  child: Center(
                    child: Text(
                      'All you need is stay at home.',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SafetyRulesScreen())),
                child: Container(
                  height: 200,
                  child: Column(
                    children: [
                      Icon(
                        Icons.article_rounded,
                        size: 100,
                        color: Colors.grey[200],
                      ),
                      Text(
                        'Safety Rules',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Row(
              children: [
                Expanded(
                  child: buildDropdownTitle(),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Cases Updates',
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey[200],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      height: 270,
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
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                infectedValue().toString(),
                                style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Infected',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                deathsValue().toString(),
                                style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Deaths',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                recoveredValue().toString(),
                                style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.green[600],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Recovered',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.green[600],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildDropdownTitle() => Container(
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: DropdownButtonHideUnderline(
          child: ButtonTheme(
            alignedDropdown: true,
            child: DropdownButton(
              value: _chosenValue,
              isExpanded: true,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
              hint: Text(
                'Select Country',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              items: <String>[
                'India',
                'America',
                'Canada',
                'Russia',
                'Germany',
                'France',
                'Italy',
                'China',
                'Brazil',
                'Austria',
              ].map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _chosenValue = newValue.toString();
                });
              },
            ),
          ),
        ),
      );
}
