import 'package:care_and_cure/Provider/google_signIn_provider.dart';
import 'package:care_and_cure/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Tags extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            WebsafeSvg.asset("assets/Icons/Angle down.svg", width: 16),
            SizedBox(width: kDefaultPadding / 4),
            WebsafeSvg.asset("assets/Icons/Markup.svg", width: 20),
            SizedBox(width: kDefaultPadding / 2),
            Text(
              "Tags",
              style: Theme.of(context)
                  .textTheme
                  .button!
                  .copyWith(color: kGrayColor),
            ),
            Spacer(),
            MaterialButton(
              padding: EdgeInsets.all(10),
              minWidth: 40,
              onPressed: () {},
              child: Icon(
                Icons.add,
                color: kGrayColor,
                size: 20,
              ),
            )
          ],
        ),
        SizedBox(height: kDefaultPadding / 2),
        buildTag(context, color: Color(0xFF23CF91), title: "Design"),
        buildTag(context, color: Color(0xFF3A6FF7), title: "Work"),
        buildTag(context, color: Color(0xFFF3CF50), title: "Friends"),
        buildTag(context, color: Color(0xFF8338E1), title: "Sign Out",
            onClicked: () {
          final provider =
              Provider.of<GoogleSignInProvider>(context, listen: false);
          provider.logout();
        }),
      ],
    );
  }

  InkWell buildTag(
    BuildContext context, {
    required Color color,
    required String title,
    VoidCallback? onClicked,
  }) {
    return InkWell(
      onTap: onClicked,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(kDefaultPadding * 1.5, 10, 0, 10),
        child: Row(
          children: [
            WebsafeSvg.asset(
              "assets/Icons/Markup filled.svg",
              height: 18,
              color: color,
            ),
            SizedBox(width: kDefaultPadding / 2),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .button!
                  .copyWith(color: kGrayColor),
            ),
          ],
        ),
      ),
    );
  }
}
