import 'package:care_and_cure/Screens/DoctorScreen/doctor_screen.dart';
import 'package:care_and_cure/models/doctor_models.dart';
import 'package:care_and_cure/utils/constant.dart';
import 'package:care_and_cure/utils/responsive_helper.dart';
import 'package:care_and_cure/widgets/Doctor_list/doctor_card.dart';
import 'package:care_and_cure/widgets/sideMenu_widgets/side_menu.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ListOfDoctors extends StatefulWidget {
  const ListOfDoctors({Key? key}) : super(key: key);

  @override
  _ListOfDoctorsState createState() => _ListOfDoctorsState();
}

class _ListOfDoctorsState extends State<ListOfDoctors> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 250),
        child: SideMenu(),
      ),
      body: Container(
        padding: EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
        color: kBgDarkColor,
        child: SafeArea(
          right: false,
          child: Column(
            children: [
              Text(
                "Search nearby Doctor or Hospital",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5),
              // This is our Seearch bar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  children: [
                    // Once user click the menu icon the menu shows like drawer
                    // Also we want to hide this menu icon on desktop
                    if (!ResponsiveHelper.isDesktop(context))
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                      ),
                    if (!ResponsiveHelper.isDesktop(context))
                      SizedBox(width: 5),
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search",
                          fillColor: kBgLightColor,
                          filled: true,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(
                                kDefaultPadding * 0.75), //15
                            child: WebsafeSvg.asset(
                              "assets/Icons/Search.svg",
                              width: 24,
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
              SizedBox(height: kDefaultPadding),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  children: [
                    WebsafeSvg.asset(
                      "assets/Icons/Angle down.svg",
                      width: 16,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Sort by date",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    MaterialButton(
                      minWidth: 20,
                      onPressed: () {},
                      child: WebsafeSvg.asset(
                        "assets/Icons/Sort.svg",
                        width: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: ListView.builder(
                  itemCount: doctors.length,
                  // On mobile this active dosen't mean anything
                  itemBuilder: (context, index) => DoctorCard(
                    isActive:
                        ResponsiveHelper.isMobile(context) ? false : index == 0,
                    doctor: doctors[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DoctorScreen(doctor: doctors[index]),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
