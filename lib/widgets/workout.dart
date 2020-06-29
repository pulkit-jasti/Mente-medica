import 'package:Mente_medica/widgets/work.dart';
import 'package:Mente_medica/widgets/workoutpage.dart';
import 'package:flutter/material.dart';

List<Work> breathing = [
  Work(
      name: "Abdominal breathing technique",
      image: 'assets/images/a.png',
      disc:
          "The abdominal breathing technique can be really helpful before experiencing a particularly stressful event like taking an exam or giving a big presentation. Oy, our hearts are pounding just thinking about it."),
  Work(
      name: "Progressive muscle relaxation",
      image: "assets/images/b.png",
      disc:
          "How to do it: Close your eyes and focus on tensing and relaxing each muscle group for 2 to 3 seconds. Start with your feet and toes, and then move up to your knees, thighs, glutes, chest, arms, hands, neck, jaw, and eyes. Maintain deep, slow breaths the entire time."),
  Work(
      name: "Alternate nostril breathing",
      image: 'assets/images/c.png',
      disc:
          "How to do it: Start by sitting in a comfortable meditative pose. Hold out your dominant hand and press the tips of your pointer and middle fingers into your palm, leaving your ring finger, pinky finger, and thumb extended."),
  Work(
      name: "Skull-Shining Breath",
      image: "assets/images/d.png",
      disc:
          "How to do it: Begin sitting in an upright position with good posture and your hands on your knees. Take a long, slow inhale through your nose. Then exhale powerfully (also through your nose) by contracting your lower belly.")
];
List<Work> stretch = [
  Work(
      name: "Knee to Chest Stretch",
      image: 'assets/images/s1.png',
      disc:
          "Lie on your back with both legs extended.Pull your right knee into your chest, while keeping the left leg straight and your lower back pressed into the floor.Hold for 30 seconds to 2 minutes.Repeat on the other leg"),
  Work(
      name: "Lunging Hip Flexor Stretch  ",
      image: "assets/images/s2.png",
      disc:
          "Kneel on your left knee. Place your right foot flat on the floor in front of you, knee bent."),
  Work(
      name: "Seated Shoulder Squeeze",
      image: 'assets/images/s3.png',
      disc:
          "Sit on the floor with your knees bent and feet flat on the floor."),
  Work(
      name: "Lying Quad Stretch",
      image: "assets/images/s4.png",
      disc: "Lie on one side."),
  Work(
      name: "Sphinx Pose",
      image: "assets/images/s5.png",
      disc: "Lie on your stomach with your legs straight out behind you.")
];
List<Work> yoga = [
  Work(
      name: "Vrikshasana ",
      image: 'assets/images/s1.png',
      disc:
          "This pose gives you a sense of grounding. It improves your balance and strengthens your legs and back. "),
  Work(
      name: "Kursiasana",
      image: "assets/images/s4.png",
      disc:
          "An intensely powerful pose, this one strengthens the muscles of the legs and arms"),
  Work(
      name: "Naukasana",
      image: 'assets/images/s2.png',
      disc:
          "It tightens the abdominal muscles and strengthens shoulders and upper back. "),
  Work(
      name: "Child's Pose",
      image: "assets/images/s3.png",
      disc:
          "This restful posture helps let go and surrender. It restores vitality physically, mentally and emotionally.")
];
List<Work> workout = [
  Work(
      name: "TOMATO",
      image: 'assets/images/ecorp-lightgreen.png',
      disc: "aaaaaa"),
  Work(name: "POTATO", image: "images/6.png", disc: "aaaaaa"),
  Work(name: "CARROT", image: 'images/2.png', disc: "aaaaaa"),
  Work(name: "ONION", image: "images/8.png", disc: "aaaaaa")
];

class WorkOut extends StatefulWidget {
  @override
  _WorkOutState createState() => _WorkOutState();
}

class _WorkOutState extends State<WorkOut> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.purple[100],
        child: Column(
          children: <Widget>[
            Text(
              "Breathing",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 500.0,
              child: ListView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {
                          print("hi");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return new ProductPage(
                                  productData: breathing[0],
                                );
                              },
                            ),
                          );
                        },
                        child: Card(
                          child: Image.asset(
                            "assets/images/a.png",
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {
                          print("hi");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return new ProductPage(
                                  productData: breathing[1],
                                );
                              },
                            ),
                          );
                        },
                        child: Card(
                          child: Image.asset(
                            breathing[1].image,
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {
                          print("hi");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return new ProductPage(
                                  productData: breathing[1],
                                );
                              },
                            ),
                          );
                        },
                        child: Card(
                          child: Image.asset(
                            breathing[2].image,
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {
                          print("hi");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return new ProductPage(
                                  productData: breathing[3],
                                );
                              },
                            ),
                          );
                        },
                        child: Card(
                          child: Image.asset(
                            breathing[3].image,
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Stretching Exercises",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 500.0,
              child: ListView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {
                          print("hi");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return new ProductPage(
                                  productData: stretch[0],
                                );
                              },
                            ),
                          );
                        },
                        child: Card(
                          child: Image.asset(
                            stretch[0].image,
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {
                          print("hi");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return new ProductPage(
                                  productData: stretch[1],
                                );
                              },
                            ),
                          );
                        },
                        child: Card(
                          child: Image.asset(
                            stretch[1].image,
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {
                          print("hi");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return new ProductPage(
                                  productData: stretch[2],
                                );
                              },
                            ),
                          );
                        },
                        child: Card(
                          child: Image.asset(
                            stretch[2].image,
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {
                          print("hi");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return new ProductPage(
                                  productData: stretch[3],
                                );
                              },
                            ),
                          );
                        },
                        child: Card(
                          child: Image.asset(
                            stretch[3].image,
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {
                          print("hi");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return new ProductPage(
                                  productData: stretch[4],
                                );
                              },
                            ),
                          );
                        },
                        child: Card(
                          child: Image.asset(
                            stretch[4].image,
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Breathing exercises",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 500.0,
              child: ListView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {},
                        child: Card(
                          child: Image.asset(
                            "assets/images/ecorp-lightgreen.png",
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {},
                        child: Card(
                          child: Image.asset(
                            "assets/images/ecorp-lightgreen.png",
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {},
                        child: Card(
                          child: Image.asset(
                            "assets/images/ecorp-lightgreen.png",
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {},
                        child: Card(
                          child: Image.asset(
                            "assets/images/ecorp-lightgreen.png",
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {},
                        child: Card(
                          child: Image.asset(
                            "assets/images/ecorp-lightgreen.png",
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Yoga",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 500.0,
              child: ListView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {},
                        child: Card(
                          child: Image.asset(
                            "assets/images/ecorp-lightgreen.png",
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {},
                        child: Card(
                          child: Image.asset(
                            "assets/images/ecorp-lightgreen.png",
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {},
                        child: Card(
                          child: Image.asset(
                            "assets/images/ecorp-lightgreen.png",
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {},
                        child: Card(
                          child: Image.asset(
                            "assets/images/ecorp-lightgreen.png",
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {},
                        child: Card(
                          child: Image.asset(
                            "assets/images/ecorp-lightgreen.png",
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      height: 400,
                      width: 300.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
