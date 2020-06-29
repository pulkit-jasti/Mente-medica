import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  @override
  final List<String> list = [
    'assets/images/mu1.png',
    'assets/images/mu2.png',
    'assets/images/mu3.png',
    'assets/images/mu4.png',
    'assets/images/mu5.png',
    'assets/images/mu6.png',
    'assets/images/mu7.png',
    'assets/images/mu8.png',
    'assets/images/mu9.png',
    'assets/images/mu10.png',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("MUSIC"),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              })),
      body: Column(
        children: <Widget>[
          SizedBox(height: 100),
          Container(
            child: CarouselImages(
              scaleFactor: 0.7,
              listImages: list,
              height: MediaQuery.of(context).size.height * 0.6,
              borderRadius: 30.0,
              cachedNetworkImage: true,
              verticalAlignment: Alignment.bottomCenter,
              onTap: (index) {
                print('Tapped on page $index');
              },
            ),
          ),
          FloatingActionButton(
            hoverElevation: 30,
            hoverColor: Colors.red,
            onPressed: () {},
            child: Text("PLAY"),
          )
        ],
      ),
    );
  }
}
