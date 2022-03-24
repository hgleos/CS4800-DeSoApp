import 'package:android_deso_app/Screens/HomePage/home_page2.dart';
import 'package:android_deso_app/Screens/Settings/settings_page.dart';
import 'package:android_deso_app/Screens/Settings/update_wallet_page.dart';
import 'package:flutter/material.dart';
import 'Screens/HomePage/home_page.dart';

void main() {
  runApp(const DeSoApp());
}

class DeSoApp extends StatelessWidget {
  const DeSoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeSo App',
      theme: ThemeData(
      ),
      home: const HomePage2(),

    );
  }
}
