import 'package:care_and_cure/models/doctor_models.dart';
import 'package:care_and_cure/utils/constant.dart';
import 'package:care_and_cure/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class DoctorCard extends StatelessWidget {
  final bool? isActive;
  final Doctor? doctor;
  final VoidCallback press;
  const DoctorCard({
    Key? key,
    this.isActive,
    this.doctor,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  Here the shadow is not showing properly
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20 / 2),
      child: InkWell(
        onTap: press,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: isActive! ? kPrimaryColor : kBgDarkColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 32,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(doctor!.image!),
                        ),
                      ),
                      SizedBox(width: 20 / 2),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            text: "${doctor!.name!} \n",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: isActive! ? Colors.white : kTextColor,
                            ),
                            children: [
                              TextSpan(
                                text: doctor!.subject,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                      color:
                                          isActive! ? Colors.white : kTextColor,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            doctor!.time!,
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      color: isActive! ? Colors.white70 : null,
                                    ),
                          ),
                          SizedBox(height: 5),
                          if (doctor!.isAttachmentAvailable!)
                            WebsafeSvg.asset(
                              "assets/Icons/Paperclip.svg",
                              color: isActive! ? Colors.white70 : kGrayColor,
                            )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20 / 2),
                  Text(
                    doctor!.body!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          height: 1.5,
                          color: isActive! ? Colors.white70 : null,
                        ),
                  )
                ],
              ),
            ).addNeumorphism(
              blurRadius: 15,
              borderRadius: 15,
              offset: Offset(5, 5),
              topShadowColor: Colors.white60,
              bottomShadowColor: Color(0xFF234395).withOpacity(0.15),
            ),
            if (!doctor!.isChecked!)
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kBadgeColor,
                  ),
                ).addNeumorphism(
                  blurRadius: 4,
                  borderRadius: 8,
                  offset: Offset(2, 2),
                ),
              ),
            if (doctor!.tagColor != null)
              Positioned(
                left: 8,
                top: 0,
                child: WebsafeSvg.asset(
                  "assets/Icons/Markup filled.svg",
                  height: 18,
                  color: doctor!.tagColor,
                ),
              )
          ],
        ),
      ),
    );
  }
}
