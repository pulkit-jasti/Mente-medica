import 'package:Mente_medica/widgets/work.dart';
import 'package:Mente_medica/widgets/workoutpage.dart';
import 'package:carousel_images/carousel_images.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'widgets/indecators.dart';

int touchedIndex;

class Diet extends StatefulWidget {
  @override
  _DietState createState() => _DietState();
}

class _DietState extends State<Diet> {
  final List<String> listImages = [
    'assets/images/f1.png',
    'assets/images/f2.png',
    'assets/images/f3.png',
    'assets/images/f4.png',
    'assets/images/f9.png',
  ];
  final List<String> listImages1 = [
    'assets/images/f5.png',
    'assets/images/f6.png',
    'assets/images/f7.png',
    'assets/images/f8.png',
  ];

  List<Work> da = [
    Work(
        name: "physical activity",
        image: 'assets/images/f5.png',
        disc:
            " Our bodies need to move. They need to stretch, reach, twist, bend, step, sweat, to whatever degree works for our unique shapes and constitutions. They don’t care if it’s at the gym, out in the neighborhood, or in your living room—they just need activity. It’s not just about “staying in shape.” It’s about your immune health and your mental health, as well! Build movement in your structure, at least 20 minutes per day! YouTube exercise videos range from three-minute workouts to more than an hour, and many of them are family-friendly, too. "),
    Work(
        name: "healty meals",
        image: "assets/images/f6.png",
        disc:
            "You might have a sense of what foods make you feel lively, focused, resourced, and sane, right? And there are certainly those that are just for fun (hellooo, chocolate). At Open Source Wellness, we suggest not banning or outlawing the small treats that bring you joy, but rather setting up a daily structure that (mostly) fills you with nourishing, healthy foods. Always wanted to make a dietary change, learn to meal prep, teach your kids to cook, or sample a new cuisine? Now’s the time! Structure one or two 30-minute chunks of cooking into your days."),
    Work(
        name: "Social Support",
        image: 'assets/images/f7.png',
        disc:
            "This one, more than ever, is key. Humans need to feel connected. We need to feel seen, heard, and understood by another human—and to extend the same in return. And since it won’t “just happen” throughout your day, you’re going to need to schedule it. More to the point, you’ll need to ask for it. To get vulnerable enough to say, “I really want to connect with you. Can we talk?” Tell the truth about how you’re feeling, what you’re experiencing. Invite them to do the same. Listen with kindness. Offer your support with generosity. High-quality human attention may feel like a scarce resource right now, but you can generate an infinite supply of it."),
    Work(
        name: "Stress Reduction",
        image: "assets/images/f8.png",
        disc:
            " Amid all the “doing”—the preparing, protecting, adjusting, coping, responding, providing, procuring—humans need moments to simply BE. It’s not necessarily about serenity, or warm fuzzy feelings. It’s about pausing long enough to let your nervous system come back to baseline after prolonged activation. Experiment with what works for you. If meditation or guided relaxation works for you, great! If watching a crappy TV show while snuggled into the couch helps you to just BE, that’s good, too. And if painful emotions get too loud or overwhelming when you try to slow down, that’s OK, too.")
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            child: AspectRatio(
              aspectRatio: 1.3,
              child: Card(
                elevation: 20,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 18,
                    ),
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: PieChart(
                          PieChartData(
                              pieTouchData: PieTouchData(
                                  touchCallback: (pieTouchResponse) {
                                setState(() {
                                  if (pieTouchResponse.touchInput
                                          is FlLongPressEnd ||
                                      pieTouchResponse.touchInput is FlPanEnd) {
                                    touchedIndex = -1;
                                  } else {
                                    touchedIndex =
                                        pieTouchResponse.touchedSectionIndex;
                                  }
                                });
                              }),
                              borderData: FlBorderData(
                                show: false,
                              ),
                              sectionsSpace: 0,
                              centerSpaceRadius: 40,
                              sections: showingSections()),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Indicator(
                          color: Color(0xff0293ee),
                          text: 'Fruits and vegetables',
                          isSquare: true,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Indicator(
                          color: Color(0xfff8b250),
                          text: 'Fibre-rich carbohydrates ',
                          isSquare: true,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Indicator(
                          color: Color(0xff845bef),
                          text: 'Protien',
                          isSquare: true,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Indicator(
                          color: Color(0xff13d38e),
                          text: 'Fats',
                          isSquare: true,
                        ),
                        SizedBox(
                          height: 18,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 28,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 100),
                CarouselImages(
                  scaleFactor: 0.7,
                  listImages: listImages,
                  height: 300.0,
                  borderRadius: 30.0,
                  cachedNetworkImage: true,
                  verticalAlignment: Alignment.bottomCenter,
                  onTap: (index) {
                    print('Tapped on page $index');
                  },
                ),
              ],
            ),
          ),
          Text(
            "extra tips",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 100),
                Container(
                  child: CarouselImages(
                    scaleFactor: 0.7,
                    listImages: listImages1,
                    height: 300.0,
                    borderRadius: 30.0,
                    cachedNetworkImage: true,
                    verticalAlignment: Alignment.bottomCenter,
                    onTap: (index) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return new ProductPage(
                              productData: da[index],
                            );
                          },
                        ),
                      );
                      print('Tapped on page $index');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<PieChartSectionData> showingSections() {
  return List.generate(4, (i) {
    final isTouched = i == touchedIndex;
    final double fontSize = isTouched ? 25 : 16;
    final double radius = isTouched ? 60 : 50;
    switch (i) {
      case 0:
        return PieChartSectionData(
          color: const Color(0xff0293ee),
          value: 40,
          title: '40%',
          radius: radius,
          titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff)),
        );
      case 1:
        return PieChartSectionData(
          color: const Color(0xfff8b250),
          value: 25,
          title: '25%',
          radius: radius,
          titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff)),
        );
      case 2:
        return PieChartSectionData(
          color: const Color(0xff845bef),
          value: 25,
          title: '25%',
          radius: radius,
          titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff)),
        );
      case 3:
        return PieChartSectionData(
          color: const Color(0xff13d38e),
          value: 10,
          title: '10%',
          radius: radius,
          titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff)),
        );
      default:
        return null;
    }
  });
}
