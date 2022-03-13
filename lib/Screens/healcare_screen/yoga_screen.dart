import 'package:flutter/material.dart';

import 'package:care_and_cure/utils/constant.dart';

class YogaScreen extends StatelessWidget {
  const YogaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButton(),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Text(
              'EVERYDAY HEALTH',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Text(
              'Beat stress, ease back pain, and gain flexibility with these simple stretches and breathing exercises.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: MediaQuery.of(context).size.height * 0.77,
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: ListView(
              children: [
                YogaCard(
                  title: 'Sukhasana — to Relieve Stress',
                  description:
                      'Sit cross-legged on a yoga mat with your hands on your knees, palms up. Keep your spine as straight as you can. Push the bones you\'re sitting on down into the floor — your "sit bones" in yoga-speak. Close your eyes and inhale."This is a great pose for beginners to use as an assessment," says Gwen Lawrence, yoga coach for the New York Knicks and other sports teams, athletes, and celebrities. "Just sitting on the floor gives you a perfect way to see and feel the external rotation on the legs." This pose also boosts back flexibility and can help relieve stress.',
                  imagePath: 'assets/images/Sukhasana.jpg',
                ),
                YogaCard(
                  title: 'Cat-Cow to Awaken the Spine and Ease Back Pain',
                  description:
                      'Get on your mat on all fours with your hands directly below your shoulders and your knees directly below your hips. Distribute your weight equally between your hands and spread your fingers wide. Inhale and round your back, arching it up as you lower your chin to your chest; feel the stretch from your neck to your tailbone, like a cat. As you exhale, lower your back down all the way to a scoop shape as you lift your head, and tilt it back.“Cat-Cow stretches and awakens the spine, which helps ease back pain,” says Baptiste Yoga teacher Leah Cullis. “It also opens and increases flexibility of the whole spine, neck, chest, and shoulders. I recommend repeating 5 to 10 times or more.”',
                  imagePath: 'assets/images/Cat-Cow.jpg',
                ),
                YogaCard(
                  title: 'Tree Pose — Vrksasana — to Improve Your Balance',
                  description:
                      'Start by standing straight for this pose. Bring your hands together in the prayer position and lift them over your head. Balance on your right leg. Bend your left knee out to the left side and press your left foot to the inner thigh of your right leg. Hold for 30 seconds. Switch legs and repeat."This pose helps to stretch the body long, from the heels to the tips of your fingers," says Shea Vaughn, wellness and fitness expert and author of Breakthrough: The 5 Living Principles to Defeat Stress, Look Great, and Find Total Well-Being (and mom of actor Vince Vaughn). It will also help you improve your balance.',
                  imagePath: 'assets/images/TreePose.jpg',
                ),
                YogaCard(
                  title: 'Downward-Facing Dog — to Enhance Flexibility',
                  description:
                      'In Downward-Facing Dog, your body forms an inverted V-shape. Start by placing both hands on the mat in front of you, palms down; your hands should be slightly in front of your shoulders. Place your knees on the ground directly under your hips. Exhale as you lift your knees off the ground and lift your buttocks and hips toward the ceiling. Push the top of your thighs back and stretch your heels down toward the floor. Keep your head down between your upper arms and in line with them, not hanging down. If you notice your lower back rounding, try bending your knees to help lengthen your back.“Downward-Facing Dog calms the nervous system, works on overall flexibility, decompresses the spine, tones the arms, sculpts the legs, and opens the shoulders,” says Cullis. The pose is often held for five breaths between sides, or longer for more strength-building benefits.',
                  imagePath: 'assets/images/Downward-Facing.jpg',
                ),
                YogaCard(
                  title:
                      'Child\'s Pose — Balasana — to Help You Relax and Unwind',
                  description:
                      'From Downward-Facing Dog, simply bend your knees and lower your butt to your heels as you bring your chest toward the floor over your knees. Lower your shoulders and head to the floor. Place your arms along your sides, palms down, or you can support your head by folding your arms under your forehead. Breathe and relax for as long as you need to. “Child’s Pose is one of the most healing yoga poses, and it’s my favorite of them all,” says Cullis. “It awakens the connection between the breath and body and sends calming energy through all the muscles. It’s an opportunity to get grounded, go inward, and to come out of your busy mind and into your body by awakening your breath from the inside out.” Child’s Pose is a great way to take a break and relax during your yoga practice, or anytime you feel tired or overwhelmed.',
                  imagePath: 'assets/images/ChildPose.jpg',
                ),
                YogaCard(
                  title: 'Baby Pigeon Pose to Open Up Your Hips',
                  description:
                      'From all fours, move your right knee forward between your hands. As though you were doing a lunge, slowly straighten your left leg behind you, keeping the knee and top of the foot on the floor. Now rotate the right knee toward the right wrist and bring it down to the floor with your right calf flat on the floor and your right foot resting under your left groin. Lower your upper body over the bent leg, either all the way to the floor or resting on your elbows. Slowly inhale and exhale five times. Before you change sides, push back on your left leg to stretch the calf muscles. Repeat with your left leg bent and right leg extended. This pose is a favorite for runners because it boosts hip flexibility and also releases the glutes and low back, Lawrence says. "If you run, lift weights, do CrossFit, or Spin, you must do this stretch to keep strong and flexible and enhance your performance.',
                  imagePath: 'assets/images/BabyPigeon.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class YogaCard extends StatelessWidget {
  final String? imagePath;
  final String? title;
  final String? description;
  const YogaCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 90,
        height: 270,
        padding: const EdgeInsets.all(30),
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
        child: Row(
          children: [
            Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                color: kBgDarkColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Image(
                image: AssetImage(imagePath!),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 600,
                  child: Text(
                    description!,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
