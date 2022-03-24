import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/Elements/app_bottom_navigation_bar2.dart';
import 'package:flutter/material.dart';
import 'package:android_deso_app/constants.dart';

class UpdateEmailPage extends StatefulWidget {
  const UpdateEmailPage({Key? key}) : super(key: key);

  @override
  State<UpdateEmailPage> createState() => _UpdateEmailPageState();
}

class _UpdateEmailPageState extends State<UpdateEmailPage> {
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
                'Change email address',
                style: boldHeading,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25, left: 20, right: 20),
              child: TextField(
                textInputAction: TextInputAction.next,
                // goes to next text field
                maxLines: 1,
                // text style for user input
                style: TextStyle(fontSize: 20),
                obscureText: false,
                autocorrect: false,
                autofocus: true,
                enableSuggestions: false,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                    hintText: 'new email address'),
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
                    hintText: 'password'),
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
