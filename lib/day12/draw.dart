import 'package:flutter/material.dart';
import 'package:ppkd_b_3/Extension/navigation.dart';
import 'package:ppkd_b_3/day12/date.dart';
import 'package:ppkd_b_3/day12/dropdown.dart';
import 'package:ppkd_b_3/day12/switchdm.dart';
import 'package:ppkd_b_3/day12/terms.dart';
import 'package:ppkd_b_3/day12/timepicker.dart';
import 'package:ppkd_b_3/day6/flutter2_1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const id = "/main";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndexDrawer = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Flutter2(appBar: false),
    TermsnConditions(),
    SwitchDM(),
    DropDL(),
    DateDP(),
    Timepicker(),
  ];

  void onItemTap(int index) {
    setState(() {
      _selectedIndexDrawer = index;
    });
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndexDrawer]),
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Profile"),
              onTap: () {
                onItemTap(0);
              },
            ),
            ListTile(
              title: Text("Terms n Conditions"),
              onTap: () {
                onItemTap(1);
              },
            ),
            ListTile(
              title: Text("Dark Mode"),
              onTap: () {
                onItemTap(2);
              },
            ),
            ListTile(
              title: Text("Dropdown List"),
              onTap: () {
                onItemTap(3);
              },
            ),
            ListTile(
              title: Text("Date Picker"),
              onTap: () {
                onItemTap(4);
              },
            ),
            ListTile(
              title: Text("Time Picker"),
              onTap: () {
                onItemTap(5);
              },
            ),
          ],
        ),
      ),
      // endDrawer: Drawer(child: Column(children: [])),
    );
  }
}
