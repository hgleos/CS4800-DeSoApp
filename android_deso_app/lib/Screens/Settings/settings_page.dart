import 'package:android_deso_app/Screens/Elements/app_bottom_navigation_bar.dart';
import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/Elements/app_bottom_navigation_bar2.dart';
import 'package:flutter/material.dart';
import 'package:android_deso_app/constants.dart';
import 'package:android_deso_app/Screens/Elements/app_bottom_bar.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: desoAppBar(context, true),
      body: Column(

      ),
      bottomNavigationBar: AppBottomNavBar2(),
    );
  }
}
