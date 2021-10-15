import 'package:care_and_cure/models/doctor_models.dart';
import 'package:care_and_cure/utils/constant.dart';
import 'package:flutter/material.dart';

class AppointmentDoctorCard extends StatelessWidget {
  final bool? isActive;
  final Doctor? doctor;
  final VoidCallback press;
  const AppointmentDoctorCard({
    Key? key,
    this.isActive,
    this.doctor,
    required this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 250,
        height: 250,
        padding: const EdgeInsets.symmetric(horizontal: 15),
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
        child: Row(
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(doctor!.image!),
            ),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctor!.name!,
                  style: TextStyle(
                    fontSize: 28,
                    color: kGreyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  doctor!.subject!,
                  style: TextStyle(
                    fontSize: 20,
                    color: kGreyColor,
                  ),
                ),
                Text(
                  doctor!.qualification!,
                  style: TextStyle(
                    fontSize: 20,
                    color: kGreyColor,
                  ),
                ),
              ],
            ),
            Spacer(),
            ConstrainedBox(
              constraints: const BoxConstraints.tightFor(
                width: 260,
                height: 100,
              ),
              child: ElevatedButton(
                onPressed: () => _showAppointmentBookDialog(context),
                child: Text(
                  'Book Appointment',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _showAppointmentBookDialog(context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Book Appointment'),
        content: Builder(builder: (context) {
          return Container(
            width: 600,
            height: 450,
            child: Column(
              children:[
                
              ],
            )
          );
        }),
      ),
    );
  }
}
