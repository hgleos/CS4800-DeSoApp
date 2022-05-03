import 'package:android_deso_app/Screens/Contracts/contracts_page.dart';
import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/HomePage/home_feed.dart';
import 'package:android_deso_app/Screens/Listings/listings_page.dart';
import 'package:android_deso_app/Screens/Settings/settings_page.dart';
import 'package:android_deso_app/constants.dart';
import 'package:flutter/material.dart';

// https://stackoverflow.com/questions/63290506/flutter-multi-page-navigation-using-bottom-navigation-bar-icons

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

final iconSize = 30.0;

class _HomePage2State extends State<HomePage2> {
  int selectedPage = 2;

  final _pageOptions = [
    SettingsPage(),
    ContractsPage(),
    HomeFeed(),
    ListingsPage(),
    Center(child: Text('Cart', style: boldHeading)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // the desoAppBar when true means user is signed in, when false no user is signed in
        appBar: desoAppBar(context, false),
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // font size is 0 because there are no labels
          selectedLabelStyle: TextStyle(fontSize: 0),
          unselectedLabelStyle: TextStyle(fontSize: 0),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined, size: iconSize), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.handshake_outlined, size: iconSize),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, size: iconSize), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.list, size: iconSize), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined, size: iconSize),
                label: ''),
          ],

          currentIndex: selectedPage,
          selectedItemColor: appPrimaryColor,
          backgroundColor: Colors.white,
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
        ));
  }
}
