import 'package:Mente_medica/funzone.dart';
import 'package:Mente_medica/widgets/workout.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:deivao_drawer/deivao_drawer.dart';

import 'diet.dart';
import 'widgets/home.dart';

class DashboardScreen extends StatefulWidget {
  @override
  static const routeName = '/dashboard';
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  bool navBarMode = false;
  static List<Widget> _screens = [BarChartSample2(), WorkOut(), Diet(), Fun()];

  Widget build(BuildContext context) {
    final drawerController = DeivaoDrawerController();

    return DeivaoDrawer(
      controller: drawerController,
      drawer: _buildDrawer(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: drawerController.toggle,
          ),
          backgroundColor: Colors.deepPurple[700],
          title: Text(Constants.appName),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.alarm, size: 30),
            Icon(Icons.fastfood, size: 30),
            Icon(Icons.games, size: 30),
          ],
          color: Colors.deepPurple[700],
          buttonBackgroundColor: Colors.green,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInCirc,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: _screens[_page],
      ),
    );
  }
}

ListView _buildDrawer() {
  return ListView(
    padding: EdgeInsets.all(0),
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(top: 50, bottom: 20),
        color: Colors.blue,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ClipOval(
              child: Image.network(
                "https://avatars3.githubusercontent.com/u/16373553?s=460&v=4",
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "David Araujo",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              "davidsdearaujo@gmail.com",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      ListTile(leading: Icon(Icons.all_inclusive), title: Text("Redeem")),
    ],
  );
}
