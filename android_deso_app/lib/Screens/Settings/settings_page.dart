import 'package:android_deso_app/Screens/Settings/change_password_page.dart';
import 'package:android_deso_app/Screens/Settings/update_email_page.dart';
import 'package:android_deso_app/Screens/Settings/update_wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:android_deso_app/constants.dart';

// TODO want to figure out how on unfocus and if password visible make it not visible again

// TODO figure out inner page routing
// https://docs.flutter.dev/cookbook/effects/nested-nav
// https://www.youtube.com/watch?v=FS_LolHfLDc&ab_channel=CodeReviewIo
// https://stackoverflow.com/questions/49681415/flutter-persistent-navigation-bar-with-named-routes

// focus node? -> for hiding password automatically after clicking out of it
// https://stackoverflow.com/questions/58097067/clickable-icon-on-textformfield-disable-textformfield-focus-on-icon-click-flu

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int selectedPage = 0;

  final _pageOptions = [
    SettingsPage(),
    ChangePasswordPage(),
    UpdateEmailPage(),
    UpdateWalletPage()
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
