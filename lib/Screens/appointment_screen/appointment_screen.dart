import 'package:care_and_cure/Provider/doctor_list_provider.dart';
import 'package:care_and_cure/utils/constant.dart';
import 'package:care_and_cure/utils/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'appointment_doctor_card.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  final TextEditingController _searchController = TextEditingController();
  List _allResult = [];
  List _searchResultList = [];
  List? data;
  Future? resultLoaded;

  _refreshDoctors() async {
    try {
      await Provider.of<DoctorListProvider>(context, listen: false)
          .fetchDoctor()
          .then((_) {
        data =
            Provider.of<DoctorListProvider>(context, listen: false).doctorList;
        setState(() {
          _allResult = data!;
        });
      });
      searchResulList();
      return 'complete';
    } catch (error) {}
  }

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  _onSearchChanged() {
    searchResulList();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (ResponsiveHelper.isDesktop(context)) {
      resultLoaded = _refreshDoctors();
    } else if (ResponsiveHelper.isMobile(context)) {
      resultLoaded = _refreshDoctors();
    }
  }

  searchResulList() {
    var showResult = [];
    if (_searchController.text != '') {
      showResult = _allResult.where((usr) {
        var name = usr.name!.toLowerCase();
        var subject = usr.subject!.toLowerCase();
        return name.contains(_searchController.text.toLowerCase()) ||
            subject.contains(_searchController.text.toLowerCase());
      }).toList();
    } else {
      showResult = List.from(_allResult);
    }
    setState(() {
      _searchResultList = showResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButton(),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Schedule an appointment',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: "Search",
                      fillColor: kBgLightColor,
                      filled: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(20 * 0.75), //15
                        child: Icon(
                          Icons.search,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 520,
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
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Text(
                          'Book a Doctor',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 15),
                        Expanded(
                          child: ListView.builder(
                            itemCount: _searchResultList.length,
                            // On mobile this active dosen't mean anything
                            itemBuilder: (context, index) =>
                                AppointmentDoctorCard(
                              isActive: ResponsiveHelper.isMobile(context)
                                  ? false
                                  : index == 0,
                              doctor: _searchResultList[index],
                              press: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) =>
                                //         DoctorScreen(doctor: _searchResultList[index]),
                                //   ),
                                // );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
