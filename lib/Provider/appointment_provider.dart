import 'package:care_and_cure/models/appointment_model.dart';
import 'package:flutter/material.dart';

class AppointmentProvider with ChangeNotifier {
// setter
  List<AppointmentModel> _appoint = [];

// getter
  List<AppointmentModel> get appoint {
    return [..._appoint];
  }

  Future addAppointment({AppointmentModel? apt}) async {
    final List<AppointmentModel> loadedAppointment = [];
    loadedAppointment.add(AppointmentModel(
        image: apt!.image,
        docName: apt.docName,
        docDescription: apt.docDescription,
        date: apt.date,
        time: apt.time));
    _appoint = loadedAppointment;
  }
}
