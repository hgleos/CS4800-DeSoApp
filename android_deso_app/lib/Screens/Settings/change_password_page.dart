import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/Elements/app_bottom_navigation_bar2.dart';
import 'package:flutter/material.dart';
import 'package:android_deso_app/constants.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: desoAppBar(context, true),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                'Change password',
                style: boldHeading,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 20, right: 20),
              child: TextField(
                textInputAction: TextInputAction.next,
                maxLines: 1,
                // text style for user input
                style: TextStyle(fontSize: 20),
                obscureText: true,
                autocorrect: false,
                enableSuggestions: false,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                    hintText: 'current password'),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Text('Passwords must have at least 8 characters.',
                    style: regularTextStyle),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, left: 20, right: 20),
              child: TextField(
                textInputAction: TextInputAction.next,
                maxLines: 1,
                // text style for user input
                style: TextStyle(fontSize: 20),
                obscureText: true,
                autocorrect: false,
                enableSuggestions: false,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                    hintText: 'new password'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 20, right: 20),
              child: TextField(
                maxLines: 1,
                // text style for user input
                style: TextStyle(fontSize: 20),
                obscureText: true,
                autocorrect: false,
                enableSuggestions: false,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                    hintText: 'confirm new password'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: ElevatedButton(
                  onPressed: () {},
                  style: elevatedButtonStyle,
                  child: Text(
                    'Update',
                  )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNavBar2(),
    );
  }
}
