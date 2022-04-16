import 'package:care_and_cure/Provider/appointment_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppointListScreen extends StatefulWidget {
  AppointListScreen({Key? key}) : super(key: key);

  @override
  State<AppointListScreen> createState() => _AppointListScreenState();
}

class _AppointListScreenState extends State<AppointListScreen> {
  @override
  void initState() {
    _refreshEmployee();
    super.initState();
  }

  bool isLoading = true;
  List data = [];

  _refreshEmployee() async {
    setState(() {
      isLoading = true;
    });
    try {
      data = Provider.of<AppointmentProvider>(context, listen: false).appoint;
      setState(() {
        isLoading = false;
      });

      return 'complete';
    } catch (error) {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent.shade200,
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.pink,
              ),
            )
          : data.isEmpty
              ? Center(
                  child: Text(
                  'No Appointments Booked Yet..',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ))
              : ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Card(
                        child: Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.center,
                                child: CircleAvatar(
                                  radius: 80,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage:
                                      AssetImage('${data[index].image}'),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${data[index].docName}',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '${data[index].docDescription}',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    '${data[index].date}',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    '${data[index].time}',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
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
