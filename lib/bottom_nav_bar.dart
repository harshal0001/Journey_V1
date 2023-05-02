import 'package:flutter/material.dart';
import 'package:journey/screens/add_journey.dart';
import 'package:journey/screens/explore_screen.dart';
import 'package:journey/screens/landing_screen.dart';
import 'package:journey/screens/notification_screen.dart';
import 'package:journey/screens/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  bool isLoading = false;

  void _navigate(int index) {
    setState(() {
      isLoading = true;
      _selectedIndex = index;
    });
    super.initState();
  }

  List<Widget> _widgetOptions = [];

  @override
  void initState() {
    _widgetOptions = <Widget>[
      const LandingScreen(),
      const ExploreScreen(),
      const AddJourneyScreen(),
      const NotificationScreen(),
      const ProfileScreen(),
    ];
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      //
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<bool> onBackTap() {
    if (_selectedIndex != 0) {
      _navigate(0);
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Image.asset(
            "assets/icons/logo.png",
            width: 112,
          ),
          actions: [
            Image.asset("assets/icons/message.png", width: 24),
            SizedBox(width: 28),
            Image.asset("assets/icons/user_add.png", width: 24),
            SizedBox(width: 18),
          ],
        ),
        body:  Builder(
          builder: (context) {
            return _widgetOptions.elementAt(_selectedIndex);
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _navigate,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _selectedIndex != 0
                  ? Image.asset("assets/icons/home_white.png", width: 20)
                  : Image.asset("assets/icons/home_black.png", width: 20),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex != 1
                  ? Image.asset("assets/icons/search_white.png", width: 20)
                  : Image.asset("assets/icons/search_black.png", width: 20),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex != 2
                  ? Image.asset("assets/icons/add_white.png", width: 20)
                  : Image.asset("assets/icons/add_black.png", width: 20),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex != 3
                  ? Image.asset("assets/icons/notification_white.png",
                      width: 20)
                  : Image.asset("assets/icons/notification_black.png",
                      width: 20),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex != 4
                  ? Image.asset("assets/icons/user.png", width: 20)
                  : Image.asset("assets/icons/user_selected.png", width: 20),
              label: "",
            ),
          ],
        ),
      );
    });
  }
}
