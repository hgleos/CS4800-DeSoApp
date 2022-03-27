import 'package:android_deso_app/constants.dart';
import 'package:flutter/material.dart';
import 'app_bar.dart';

class AppBottomNavBar extends StatefulWidget {
  const AppBottomNavBar({Key? key}) : super(key: key);

  @override
  _AppBottomNavBarState createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  int _selectedIndex = 0; // used for bottom nav bar selection

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  // this controls what the selected bottom nav option does?
  // TODO create screens for each option
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Settings',
      style: optionStyle,
    ),
    Text(
      'Index 1: Contracts',
      style: optionStyle,
    ),
    Text(
      'Index 2: Listings',
      style: optionStyle,
    ),
    Text(
      'Index 3: Cart',
      style: optionStyle,
    ),
  ];

  // updates the state of the app to the currently selected option on the bottom nav bar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // this calls the top app bar, the first argument is always context
      // the second argument is true when logged in, false when not logged in
      // TODO figure out how to make the bool work with log in status
      appBar: desoAppBar(context, true),

      // this displays the selected option from the _widgetOptions list
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      // this is the bottom navigation bar for the app
      bottomNavigationBar: BottomNavigationBar(
        // font size is 0 because there are no labels
        selectedLabelStyle: TextStyle(fontSize: 0),
        unselectedLabelStyle: TextStyle(fontSize: 0),
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.handshake_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: '')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: appPrimaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
