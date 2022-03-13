import 'package:care_and_cure/widgets/input_field.dart';
import 'package:flutter/material.dart';

class AmbulancePage extends StatefulWidget {
  const AmbulancePage({Key? key}) : super(key: key);

  @override
  State<AmbulancePage> createState() => _AmbulancePageState();
}

class _AmbulancePageState extends State<AmbulancePage> {
  TextEditingController? phoneNum = TextEditingController();
  TextEditingController? addressInput = TextEditingController();

  setAutoAddress() async {
    setState(() => locIconLoader = true);
    Future.delayed(const Duration(seconds: 5), () {
      addressInput = TextEditingController(
          text:
              " Palghar - Manor Rd, near Shakti Udyog, Industrial Area, Vevoor, Palghar, Maharashtra 401404");
    });

    setState(() => locIconLoader = false);
  }

  bool locIconLoader = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.greenAccent[200],
        body: Row(
          children: [
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 25),
                          TextField(
                            controller: phoneNum,
                            decoration: InputDecoration(
                              hintText: 'Enter Phone Number',
                              fillColor: Colors.blueGrey[50],
                              filled: true,
                              labelStyle: TextStyle(fontSize: 12),
                              contentPadding: EdgeInsets.only(left: 30),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blueGrey.shade50),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blueGrey.shade50),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          const SizedBox(height: 25),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: TextField(
                                  controller: addressInput,
                                  decoration: InputDecoration(
                                    hintText: 'Enter Address',
                                    fillColor: Colors.blueGrey[50],
                                    filled: true,
                                    labelStyle: TextStyle(fontSize: 12),
                                    contentPadding: EdgeInsets.only(left: 30),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blueGrey.shade50),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blueGrey.shade50),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: FloatingActionButton(
                                  child: locIconLoader
                                      ? CircularProgressIndicator()
                                      : Icon(Icons.location_history),
                                  onPressed: () => setAutoAddress(),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Submit"),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/ambulance.png',
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
