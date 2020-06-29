import 'package:Mente_medica/login.dart';
import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TestScreen(),
    );
  }
}

class TestScreen extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'Getting Bored',
      subTitle: 'Staying at home, Not able to maintain your health',
      imageUrl: 'assets/images/onboarding3.png',
    ),
    Introduction(
      title: "Here's a solution for you ",
      subTitle: 'A Personalised app to take care of you',
      imageUrl: 'assets/images/onboarding4.png',
    ),
    Introduction(
      title: 'Welcome Mente Medica',
      subTitle: 'random',
      imageUrl: 'assets/images/onboarding5.png',
    ),
    Introduction(
      title: 'Towards Nature',
      subTitle: 'A sol to your probs',
      imageUrl: 'assets/images/onboarding3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      onTapSkipButton: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Loginpage(),
          ), //MaterialPageRoute
        );
      },
    );
  }
}
