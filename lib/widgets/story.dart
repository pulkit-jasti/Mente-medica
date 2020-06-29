import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String reaction;

  const Story({Key key, this.reaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List story_anger = [];
    List story_happy = [];
    List story_sad = [];
    List story_normal = [];
    String story = "";

    return Scaffold(
      appBar: AppBar(
          title: Text("Stories"),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              })),
      body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    color: Colors.green,
                    width: 400,
                    height: MediaQuery.of(context).size.height,
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Title",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text(
                              " well, my son, but look at the holes in the fence. The fence will never be the same. When you say things in anger, they leave a scar just like this one. You can put a knife in a man and draw it out. It wont matter how many times you say Im sorry, the wound is still there."),
                          Text(
                              " well, my son, but look at the holes in the fence. The fence will never be the same. When you say things in anger, they leave a scar just like this one. You can put a knife in a man and draw it out. It wont matter how many times you say Im sorry, the wound is still there."),
                          Text(
                              " well, my son, but look at the holes in the fence. The fence will never be the same. When you say things in anger, they leave a scar just like this one. You can put a knife in a man and draw it out. It wont matter how many times you say Im sorry, the wound is still there."),
                          Text(
                              " well, my son, but look at the holes in the fence. The fence will never be the same. When you say things in anger, they leave a scar just like this one. You can put a knife in a man and draw it out. It wont matter how many times you say Im sorry, the wound is still there."),
                          Text(
                              " well, my son, but look at the holes in the fence. The fence will never be the same. When you say things in anger, they leave a scar just like this one. You can put a knife in a man and draw it out. It wont matter how many times you say Im sorry, the wound is still there."),
                          Text(
                              " well, my son, but look at the holes in the fence. The fence will never be the same. When you say things in anger, they leave a scar just like this one. You can put a knife in a man and draw it out. It wont matter how many times you say Im sorry, the wound is still there.")
                        ],
                      ),
                      color: Colors.green,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.green,
                  width: 400,
                  height: MediaQuery.of(context).size.height,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Text(
                            "Some time ago, a man punished his 3-year-old daughter for wasting a roll of gold wrapping paper. Money was tight and he became infuriated when the child tried to decorate a box to put under the Christmas tree."),
                        Text(
                            "Nevertheless, the little girl brought the gift to her father the next morning and said, This is for you, Daddy."),
                        Text("")
                      ],
                    ),
                    color: Colors.green,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 400,
                    height: MediaQuery.of(context).size.height,
                    child: Card(
                      color: Colors.green,
                    )),
              ),
            ],
          )),
    );
  }
}
