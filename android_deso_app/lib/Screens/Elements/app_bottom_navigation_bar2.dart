import 'package:android_deso_app/Screens/Settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:android_deso_app/constants.dart';

class AppBottomNavBar2 extends StatefulWidget {
  const AppBottomNavBar2({Key? key}) : super(key: key);

  @override
  State<AppBottomNavBar2> createState() => _AppBottomNavBar2State();
}

final iconSize = 30.0;

class _AppBottomNavBar2State extends State<AppBottomNavBar2> {
  int _selectedIndex = 0; // used for bottom nav bar selection
  final screens = [
    SettingsPage(),
    SettingsPage(),
    SettingsPage(),
    SettingsPage(),
  ];

  // updates the state of the app to the currently selected option on the bottom nav bar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      // font size is 0 because there are no labels
      selectedLabelStyle: TextStyle(fontSize: 0),
      unselectedLabelStyle: TextStyle(fontSize: 0),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined, size: iconSize),
            label: ''
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.handshake_outlined, size: iconSize),
            label: ''
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.list, size: iconSize),
            label: ''
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined, size: iconSize),
            label: ''
        )
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: appPrimaryColor,
      onTap: _onItemTapped,
    );
  }
}
