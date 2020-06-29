import 'package:Mente_medica/widgets/mem.dart';
import 'package:Mente_medica/widgets/music.dart';
import 'package:Mente_medica/widgets/story.dart';
import 'package:flutter/material.dart';
import "dart:math";

class Fun extends StatefulWidget {
  @override
  _FunState createState() => _FunState();
}

class _FunState extends State<Fun> {
  final _random = new Random();
  var reactions = ['happy', 'sad', 'normal', 'angry'];

  String reaction;
  @override
  Widget build(BuildContext context) {
    var element = reactions[_random.nextInt(reactions.length)];
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 400,
                  height: 200,
                  child: Card(
                    child: GestureDetector(
                      onTap: () {
                        print("hi");
                        print(element);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return new Music();
                            },
                          ),
                        );
                      },
                      child: Card(
                        child: Image.asset(
                          'assets/images/music.png',
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 10,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 400,
                  height: 200,
                  child: Card(
                    child: GestureDetector(
                      onTap: () {
                        print("hi");
                        print(element);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return new Story(
                                reaction: element,
                              );
                            },
                          ),
                        );
                      },
                      child: Card(
                        child: Image.asset(
                          'assets/images/story.png',
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 10,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 400,
                  height: 200,
                  child: Card(
                    child: GestureDetector(
                      onTap: () {
                        print("hi");
                        print(element);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return new Mem();
                            },
                          ),
                        );
                      },
                      child: Card(
                        child: Image.asset(
                          'assets/images/mem.png',
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 10,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Colors.blue,
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
