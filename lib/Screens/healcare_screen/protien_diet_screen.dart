import 'package:care_and_cure/utils/constant.dart';
import 'package:flutter/material.dart';

class ProteinDietScreen extends StatelessWidget {
  const ProteinDietScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButton(),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Text(
              'Diet Meal Plan',
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
              'Stay healthy',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Container(
              child: Wrap(
                children: [
                  Expanded(
                    child: StepsInfo(
                      color: Colors.green[300],
                      stepNo: 'Day 1',
                      description:
                          'Breakfast: Sambar with 2 brown rice idlis/ Paneer sandwich with mint chutney \nLunch: Whole-grain roti with mixed-vegetable curry with one dal \nDinner: Tofu/chicken curry with mixed vegetables and a fresh spinach salad/chicken gravy with 2 multigrain rotis',
                    ),
                  ),
                  Expanded(
                    child: StepsInfo(
                      color: Colors.orange[300],
                      stepNo: 'Day 2',
                      description:
                          'Breakfast: Chana dal pancakes with mixed vegetables and a glass of milk/ bread and egg with fruits \nLunch: Chickpea curry with brown rice/ Brown rice with dal \nDinner: Khichdi with sprout salad/Veg paratha with raita',
                    ),
                  ),
                  Expanded(
                    child: StepsInfo(
                      color: Colors.amber[300],
                      stepNo: 'Day 3',
                      description:
                          'Breakfast: Apple cinnamon porridge/ Vegetable uttapam with sambhar \nLunch: Whole-grain roti with tofu/ non veg and mixed vegetables \nDinner: Palak paneer with brown rice and vegetables/ 2 Multigrain rotis with chicken and curd',
                    ),
                  ),
                  Expanded(
                    child: StepsInfo(
                      color: Colors.pink[300],
                      stepNo: 'Day 4',
                      description:
                          'Breakfast: Yogurt with sliced fruits and sunflower seeds/ vegetable poha \nLunch: Whole-grain roti with vegetable sabzi/ Dal with veg or non veg sabzi and brown rice \nDinner: Chana masala with basmati rice and green salad/ One bowl of fruits and vegetables with multigrain rotis',
                    ),
                  ),
                  Expanded(
                    child: StepsInfo(
                      color: Colors.blue[300],
                      stepNo: 'Day 5',
                      description:
                          'Breakfast: Vegetable dalia and a glass of milk/ 3-4 dal paddu with sambar \nLunch: Vegetable sambar with brown rice/ 2 multigrain roti with veg/non veg curry \nDinner: Tofu curry with potatoes and mixed vegetables/ chicken curry with 2 multigrain rotis',
                    ),
                  ),
                  Expanded(
                    child: StepsInfo(
                      color: Colors.red[300],
                      stepNo: 'Day 6',
                      description:
                          'Breakfast: Multigrain parathas with avocado and sliced papaya/ dal paratha with mixed vegetables \nLunch: Large salad with rajma curry and quinoa/ one bowl mixed vegetable kadai \nDinner: Lentil pancakes with tofu tikka masala/ green salad with mixed vegetables and multigrain roti',
                    ),
                  ),
                  Expanded(
                    child: StepsInfo(
                      color: Colors.purple[300],
                      stepNo: 'Day 7',
                      description:
                          'Breakfast: Buckwheat porridge with sliced mango/ fruit salad with a glass of milk \nLunch: Vegetable soup with whole-grain roti/ one bowl millet and dal khichdi with multigrain roti \nDinner: Masala-baked tofu with vegetable curry/ non veg curry (chicken, seafood) with multigrain roti',
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class StepsInfo extends StatelessWidget {
  final String? stepNo;
  final String? description;
  final Color? color;
  const StepsInfo({
    Key? key,
    required this.stepNo,
    required this.description,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: 280,
          height: 240,
          decoration: BoxDecoration(
              color: color!,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 2,
                  offset: Offset(0, 3),
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                stepNo!,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  description!,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
