import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';

class Mem extends StatelessWidget {
  @override
  final List<String> list = [
    'assets/images/mem1.png',
    'assets/images/mem2.png',
    'assets/images/mem3.png',
    'assets/images/mem4.png',
    'assets/images/mem5.png',
    'assets/images/mem6.png',
    'assets/images/mem7.png',
    'assets/images/mem8.png',
    'assets/images/mem9.png',
    'assets/images/mem10.png',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Memes"),
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
        ],
      ),
    );
  }
}
