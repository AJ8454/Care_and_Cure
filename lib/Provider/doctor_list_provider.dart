import 'package:care_and_cure/models/doctor_models.dart';
import 'package:flutter/material.dart';

class DoctorListProvider with ChangeNotifier {
// setter
  List<Doctor> _doctors = [];

// getter
  List<Doctor> get doctorList {
    return [..._doctors];
  }

  final List demodata = [
    {
      "name": "Dr. Rahul Kumar",
      "image": "assets/images/profile.png",
      "subject": "Family Physicians",
      "isAttachmentAvailable": false,
      "isChecked": false,
      "tagColor": null,
      "time": "Now"
    },
    {
      "name": "Dr. Steller Kame",
      "image": "assets/images/user_2.png",
      "subject": "Cardiologists",
      "isAttachmentAvailable": false,
      "isChecked": false,
      "tagColor": null,
      "time": "15:32"
    },
    {
      "name": "Dr. Marvin Kiehn",
      "image": "assets/images/user_3.png",
      "subject": "Critical Care Medicine Specialists",
      "isAttachmentAvailable": true,
      "isChecked": false,
      "tagColor": null,
      "time": "14:27",
    },
    {
      "name": "Dr. Domenic Bosco",
      "image": "assets/images/user_4.png",
      "subject": "Family Physicians",
      "isAttachmentAvailable": false,
      "isChecked": true,
      "tagColor": Color(0xFF23CF91),
      "time": "10:43"
    },
    {
      "name": "Dr. Elenor Bauch",
      "image": "assets/images/user_5.png",
      "subject": "Infectious Disease Specialists",
      "isAttachmentAvailable": false,
      "isChecked": false,
      "tagColor": Color(0xFF3A6FF7),
      "time": "9:58"
    }
  ];

  Future<void> fetchDoctor() async {
    List<Doctor> _doctorsList = List.generate(
      demodata.length,
      (index) => Doctor(
        name: demodata[index]['name'],
        image: demodata[index]['image'],
        subject: demodata[index]['subject'],
        isAttachmentAvailable: demodata[index]['isAttachmentAvailable'],
        isChecked: demodata[index]['isChecked'],
        tagColor: demodata[index]['tagColor'],
        time: demodata[index]['time'],
        body: emailDemoText,
      ),
    );
    _doctors = _doctorsList;
    notifyListeners();
  }
}
