import 'package:care_and_cure/Provider/google_signIn_provider.dart';
import 'package:care_and_cure/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 8,
      child: Container(
        color: kBgLightColor,
        child: ListView(children: [
          Container(
            color: kBgLightColor,
            height: 60,
            child: DrawerHeader(
              child: Text(
                'Care & Cure',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: kCyanColor,
                ),
              ),
            ),
          ),
          const DrawerListTile(
            name: 'Covid-19',
            icon: Icons.production_quantity_limits,
            navigate: '/ProductScreen',
          ),
          const DrawerListTile(
            name: 'Appointment',
            icon: Icons.person,
            navigate: '/appointment',
          ),
          const DrawerListTile(
            name: 'Health Care',
            icon: Icons.group,
            navigate: '/OrderScreen',
          ),
          const DrawerListTile(
            name: 'Ambulance',
            icon: Icons.local_shipping_rounded,
            navigate: '/OrderScreen',
          ),
          const DrawerListTile(
            name: 'Morgue',
            icon: Icons.add_box_outlined,
            navigate: '/OrderScreen',
          ),
          const DrawerListTile(
            name: 'User Panel',
            icon: Icons.verified_user,
            navigate: '/mainScreen',
          ),
          Container(
            color: kBgLightColor,
            child: Row(
              children: const [
                Expanded(
                  child: Divider(),
                ),
              ],
            ),
          ),
          Container(
            color: kBgLightColor,
            child: ListTile(
              leading: const Icon(
                Icons.exit_to_app,
                color: kDarkColor,
              ),
              title: const Text(
                'Logout',
                style: TextStyle(fontSize: 13),
              ),
              onTap: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
              },
            ),
          ),
        ]),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String? name, navigate;
  final IconData icon;

  const DrawerListTile({
    Key? key,
    required this.name,
    required this.navigate,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBgLightColor,
      child: ListTile(
        leading: Icon(
          icon,
          color: kDarkColor,
        ),
        title: Text(
          name!,
          style: const TextStyle(fontSize: 13),
        ),
        onTap: () {
          // Navigator.of(context).popUntil((route) => route.isFirst);
          Navigator.of(context).pushNamed(navigate!);
        },
      ),
    );
  }
}
