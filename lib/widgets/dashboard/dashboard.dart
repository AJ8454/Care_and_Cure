import 'package:care_and_cure/Screens/ambulance_screen/ambulance_page.dart';
import 'package:care_and_cure/Screens/appointment_screen/appointment_screen.dart';
import 'package:care_and_cure/Screens/covid_screen/covid_screen.dart';
import 'package:care_and_cure/Screens/healcare_screen/healthcare_screen.dart';
import 'package:care_and_cure/utils/constant.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          'Dashboard',
          style: TextStyle(
            fontSize: 25,
            color: kCyanColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CovideScreen())),
                child: Container(
                  width: 250,
                  height: 250,
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
                          image: AssetImage('assets/images/covid.jpg'),
                        ),
                        Text(
                          'Covid-19',
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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AppointmentScreen())),
                child: Container(
                  width: 250,
                  height: 250,
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
                          image: AssetImage('assets/images/virtualAppop.png'),
                          height: 200,
                        ),
                        Text(
                          'Appointment',
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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HealthCareScreen())),
                child: Container(
                  width: 250,
                  height: 250,
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
                          image: AssetImage('assets/images/healthy.png'),
                          height: 200,
                        ),
                        Text(
                          'Health Care',
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
            // Padding(
            //   padding: const EdgeInsets.all(12.0),
            //   child: InkWell(
            //     onTap: () => Navigator.of(context).push(
            //         MaterialPageRoute(builder: (context) => CovideScreen())),
            //     child: Container(
            //       width: 250,
            //       height: 250,
            //       decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.all(Radius.circular(10)),
            //           boxShadow: [
            //             BoxShadow(
            //               color: Colors.grey.withOpacity(0.5),
            //               spreadRadius: 5,
            //               blurRadius: 7,
            //               offset: Offset(0, 3),
            //             ),
            //           ]),
            //       child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Image(
            //               image: AssetImage('assets/images/labTest.png'),
            //               height: 200,
            //             ),
            //             Text(
            //               'Lab Report',
            //               style: TextStyle(
            //                 fontSize: 20,
            //                 color: kTextColor,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             )
            //           ]),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AmbulancePage())),
                child: Container(
                  width: 250,
                  height: 250,
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
                          image: AssetImage('assets/images/ambulance.png'),
                          height: 200,
                        ),
                        Text(
                          'Ambulance',
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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CovideScreen())),
                child: Container(
                  width: 250,
                  height: 250,
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
                          image: AssetImage('assets/images/morgue.png'),
                        ),
                        Text(
                          'Morgue Storage',
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
      ],
    );
  }
}
