import 'package:flutter/material.dart';

desoBottomNavBar(BuildContext context) {


  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    // font size is 0 because there are no labels
    selectedLabelStyle: TextStyle(fontSize: 0),
    unselectedLabelStyle: TextStyle(fontSize: 0),
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: ''
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.handshake_outlined),
          label: ''
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: ''
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: ''
      )
    ],
    );
}