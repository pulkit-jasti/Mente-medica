import 'package:Mente_medica/dashboard_screen.dart';
import 'package:Mente_medica/widgets/workout.dart';
import 'package:flutter/material.dart';

import 'work.dart';

class ProductPage extends StatefulWidget {
  final String pageTitle;
  final Work productData;

  ProductPage({Key key, this.pageTitle, this.productData}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  void item(image, name, price) {
    print(name);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(widget.productData.name),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              child: Image.asset(
                widget.productData.image,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              "DESCRIPTION",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                widget.productData.disc,
                style: TextStyle(fontSize: 22),
              ),
            )
          ],
        ),
      ),
    );
  }
}
