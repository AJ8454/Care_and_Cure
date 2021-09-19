import 'package:flutter/material.dart';

class Doctor {
  final String? image, name, subject, body, time;
  final bool? isAttachmentAvailable, isChecked;
  final Color? tagColor;

  Doctor({
    this.time,
    this.isChecked,
    this.image,
    this.name,
    this.subject,
    this.body,
    this.isAttachmentAvailable,
    this.tagColor,
  });
}

List<Doctor> doctors = List.generate(
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

final List demodata = [
  // {
  //   "name": "Apple",
  //   "image": "assets/images/user_1.png",
  //   "subject": "iPhone 12 is here",
  //   "isAttachmentAvailable": false,
  //   "isChecked": false,
  //   "tagColor": null,
  //   "time": "Now"
  // },
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

String emailDemoText =
    "Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed. Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed. Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed";
