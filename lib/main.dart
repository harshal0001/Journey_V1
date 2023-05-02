import 'package:flutter/material.dart';
import 'package:journey/bottom_nav_bar.dart';
import 'package:journey/screens/add_journey.dart';
import 'package:journey/screens/explore_screen.dart';
import 'package:journey/screens/landing_screen.dart';
import 'package:journey/screens/notification_screen.dart';
import 'package:journey/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/navBar',
      routes: {
        '/landingScreen': (context)=> const LandingScreen(),
        '/exploreScreen': (context)=> const ExploreScreen(),
        '/addJourney': (context)=> const AddJourneyScreen(),
        '/notification': (context)=> const NotificationScreen(),
        '/profile':(context) => const ProfileScreen(),
        '/navBar':(context) => const BottomNavBar(),
      },
    );
  }
}