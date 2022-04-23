import 'package:flutter/material.dart';
import 'package:pro/Screen/Dashboard.dart';
import 'package:pro/Screen/Home.dart';
import 'package:pro/Screen/Profile.dart';
import 'package:pro/Screen/Donation.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Dashboard.screenId,
      routes: {
        Dashboard.screenId: (context) => const Dashboard(),
        Home.screenId: (context) => const Home(),
        Profile.screenId: (context) => const Profile(),
        Donation.screenId: (context) => const Donation(),
      },
    );
  }
}
