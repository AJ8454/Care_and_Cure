import 'package:flutter/material.dart';

import 'package:care_and_cure/utils/constant.dart';

class HealthCareCard extends StatelessWidget {
  final String? imagePath;
  final VoidCallback? onClicked;
  final String? title;
  const HealthCareCard({
    Key? key,
    required this.imagePath,
    required this.onClicked,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: InkWell(
        onTap: onClicked,
        child: Container(
          width: 450,
          height: 300,
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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image(
              image: AssetImage(imagePath!),
              height: 160,
            ),
            Text(
              title!,
              style: TextStyle(
                fontSize: 20,
                color: kTextColor,
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
