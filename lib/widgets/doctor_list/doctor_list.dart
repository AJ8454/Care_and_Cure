import 'package:care_and_cure/Provider/doctor_list_provider.dart';
import 'package:care_and_cure/utils/constant.dart';
import 'package:care_and_cure/utils/responsive_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'doctor_card.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  final TextEditingController _searchController = TextEditingController();
  List _allResult = [];
  List _searchResultList = [];
  List? data;
  Future? resultLoaded;
  var _isLoading = true;

  _refreshDoctors() async {
    try {
      await Provider.of<DoctorListProvider>(context, listen: false)
          .fetchDoctor()
          .then((_) {
        data =
            Provider.of<DoctorListProvider>(context, listen: false).doctorList;
        setState(() {
          _allResult = data!;
          _isLoading = false;
        });
      });
      searchResulList();
      return 'complete';
    } catch (error) {
      setState(() {
        _isLoading = false;
      });
    }
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
    resultLoaded = _refreshDoctors();
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
    return Column(
      children: [
        SizedBox(height: 30),
        Text(
          "Search nearby Doctor or Hospital",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
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
        SizedBox(height: 10),
        _isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Expanded(
                child: ListView.builder(
                  itemCount: _searchResultList.length,
                  // On mobile this active dosen't mean anything
                  itemBuilder: (context, index) => DoctorCard(
                    isActive:
                        ResponsiveHelper.isMobile(context) ? false : index == 0,
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
    );
  }
}
