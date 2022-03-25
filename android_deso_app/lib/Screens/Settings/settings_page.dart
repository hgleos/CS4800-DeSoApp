import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/Elements/app_bottom_navigation_bar2.dart';
import 'package:android_deso_app/Screens/Settings/change_password_page.dart';
import 'package:android_deso_app/Screens/Settings/update_email_page.dart';
import 'package:android_deso_app/Screens/Settings/update_wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:android_deso_app/constants.dart';

import '../Elements/app_bottom_navigation_bar.dart';

// https://stackoverflow.com/questions/58619673/materialpageroute-goes-to-a-new-page-without-the-appbar-using-it-with-bottomnavi
// want to transition to other pages in the settings page without it looking like it goes to an entirely new page
// because it looks strange having bottomnavbar and appbar appear again
// i think the way to do it is to have it like homepage2 where there's a list of pages

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int selectedPage = 0;

  final _pageOptions = [
    SettingsPage(),
    Center(child: Text('Contracts', style: boldHeading)),
    Center(child: Text('Listings', style: boldHeading)),
    Center(child: Text('Cart', style: boldHeading))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                'Settings',
                style: boldHeading,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UpdateWalletPage()),
                    );
                  },
                  style: elevatedButtonStyle,
                  child: Text(
                    'Update wallet address',
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UpdateEmailPage()),
                    );
                  },
                  style: elevatedButtonStyle,
                  child: Text(
                    'Change email address',
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChangePasswordPage()),
                    );
                  },
                  style: elevatedButtonStyle,
                  child: Text(
                    'Change password',
                  )),
            ),
            // sign out button will bring you to the home screen (has all the NFTs)
            Container(
              margin: EdgeInsets.only(top: 25),
              child: ElevatedButton(
                  onPressed: () {},
                  style: elevatedButtonStyle,
                  child: Text(
                    'Sign out',
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
