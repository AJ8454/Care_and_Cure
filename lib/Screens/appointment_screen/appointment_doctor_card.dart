import 'package:flutter/material.dart';

import 'package:care_and_cure/models/doctor_models.dart';
import 'package:care_and_cure/utils/constant.dart';

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
                onPressed: () => showDialog(
                  context: context,
                  builder: (_) => ShowAppointmentBookDialog(doctor: doctor!),
                  barrierDismissible: false,
                ),
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
}

class ShowAppointmentBookDialog extends StatefulWidget {
  final Doctor doctor;
  const ShowAppointmentBookDialog({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  @override
  _ShowAppointmentBookDialogState createState() =>
      _ShowAppointmentBookDialogState();
}

class _ShowAppointmentBookDialogState extends State<ShowAppointmentBookDialog> {
  bool? dateSelected1 = false;
  bool? dateSelected2 = false;
  bool? dateSelected3 = false;
  bool? dateSelected4 = false;
  bool? dateSelected5 = false;
  bool? dateSelected6 = false;
  bool? timeSelected1 = false;
  bool? timeSelected2 = false;
  bool? timeSelected3 = false;
  bool? timeSelected4 = false;
  bool? timeSelected5 = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Book Appointment'),
      content: Builder(builder: (context) {
        return Container(
          width: 600,
          height: 600,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(widget.doctor.image!),
                  ),
                ),
                Text(
                  widget.doctor.name!,
                  style: TextStyle(
                    fontSize: 22,
                    color: kGreyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.doctor.subject!,
                  style: TextStyle(
                    fontSize: 16,
                    color: kGreyColor,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  widget.doctor.description!,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    color: kGreyColor,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Book a Date',
                  style: TextStyle(
                    fontSize: 14,
                    color: kGreyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    BookDateBox(
                      day: '5',
                      month: 'OCT',
                      color: dateSelected1! ? Colors.green[200] : Colors.white,
                      onClicked: () {
                        setState(() {
                          dateSelected1 = !dateSelected1!;
                        });
                      },
                    ),
                    SizedBox(width: 12),
                    BookDateBox(
                      day: '8',
                      month: 'OCT',
                      color: dateSelected2! ? Colors.green[200] : Colors.white,
                      onClicked: () {
                        setState(() {
                          dateSelected2 = !dateSelected2!;
                        });
                      },
                    ),
                    SizedBox(width: 12),
                    BookDateBox(
                      day: '12',
                      month: 'OCT',
                      color: dateSelected3! ? Colors.green[200] : Colors.white,
                      onClicked: () {
                        setState(() {
                          dateSelected3 = !dateSelected3!;
                        });
                      },
                    ),
                    SizedBox(width: 12),
                    BookDateBox(
                      day: '16',
                      month: 'OCT',
                      color: dateSelected4! ? Colors.green[200] : Colors.white,
                      onClicked: () {
                        setState(() {
                          dateSelected4 = !dateSelected4!;
                        });
                      },
                    ),
                    SizedBox(width: 12),
                    BookDateBox(
                      day: '23',
                      month: 'OCT',
                      color: dateSelected5! ? Colors.green[200] : Colors.white,
                      onClicked: () {
                        setState(() {
                          dateSelected5 = !dateSelected5!;
                        });
                      },
                    ),
                    SizedBox(width: 12),
                    BookDateBox(
                      day: '26',
                      month: 'OCT',
                      color: dateSelected6! ? Colors.green[200] : Colors.white,
                      onClicked: () {
                        setState(() {
                          dateSelected6 = !dateSelected6!;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  'Select a Time',
                  style: TextStyle(
                    fontSize: 14,
                    color: kGreyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    BookTimeBox(
                        time: '10:00',
                        color:
                            timeSelected1! ? Colors.green[200] : Colors.white,
                        onClicked: () {
                          setState(() {
                            timeSelected1 = !timeSelected1!;
                          });
                        }),
                    SizedBox(width: 12),
                    BookTimeBox(
                        time: '12:00',
                        color:
                            timeSelected2! ? Colors.green[200] : Colors.white,
                        onClicked: () {
                          setState(() {
                            timeSelected2 = !timeSelected2!;
                          });
                        }),
                    SizedBox(width: 12),
                    BookTimeBox(
                        time: '2:00',
                        color:
                            timeSelected3! ? Colors.green[200] : Colors.white,
                        onClicked: () {
                          setState(() {
                            timeSelected3 = !timeSelected3!;
                          });
                        }),
                    SizedBox(width: 12),
                    BookTimeBox(
                        time: '4:00',
                        color:
                            timeSelected4! ? Colors.green[200] : Colors.white,
                        onClicked: () {
                          setState(() {
                            timeSelected4 = !timeSelected4!;
                          });
                        }),
                    SizedBox(width: 12),
                    BookTimeBox(
                        time: '6:00',
                        color:
                            timeSelected5! ? Colors.green[200] : Colors.white,
                        onClicked: () {
                          setState(() {
                            timeSelected5 = !timeSelected5!;
                          });
                        }),
                  ],
                ),
                SizedBox(height: 18),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(
                      width: 150,
                    ),
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context)
                          .popUntil((route) => route.isFirst),
                      child: Text('Book Now'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class BookTimeBox extends StatefulWidget {
  final Color? color;
  final String? time;
  final VoidCallback onClicked;
  const BookTimeBox({
    Key? key,
    required this.color,
    required this.time,
    required this.onClicked,
  }) : super(key: key);

  @override
  _BookTimeBoxState createState() => _BookTimeBoxState();
}

class _BookTimeBoxState extends State<BookTimeBox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onClicked,
      child: Container(
        width: 80,
        height: 40,
        decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ]),
        child: Align(
          alignment: Alignment.center,
          child: Text(widget.time!),
        ),
      ),
    );
  }
}

class BookDateBox extends StatefulWidget {
  final String? day;
  final String? month;
  final Color? color;
  final VoidCallback onClicked;
  const BookDateBox({
    Key? key,
    required this.day,
    required this.month,
    required this.color,
    required this.onClicked,
  }) : super(key: key);

  @override
  _BookDateBoxState createState() => _BookDateBoxState();
}

class _BookDateBoxState extends State<BookDateBox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onClicked,
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ]),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(widget.day!),
          Text(widget.month!),
        ]),
      ),
    );
  }
}
