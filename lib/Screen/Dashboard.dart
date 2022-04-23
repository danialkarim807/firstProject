import 'package:flutter/material.dart';
import 'package:pro/Screen/Donation.dart';
import 'package:pro/Screen/Home.dart';
import 'package:pro/Screen/Profile.dart';

class Dashboard extends StatefulWidget {
  static String screenId = "/Dashboard";
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Donation(),
    const Profile(),
  ];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('hello'),
    );
  }
}
