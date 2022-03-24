import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/Elements/app_bottom_navigation_bar2.dart';
import 'package:flutter/material.dart';
import 'package:android_deso_app/constants.dart';

class UpdateWalletPage extends StatefulWidget {
  const UpdateWalletPage({Key? key}) : super(key: key);

  @override
  State<UpdateWalletPage> createState() => _UpdateWalletPageState();
}

class _UpdateWalletPageState extends State<UpdateWalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: desoAppBar(context, true),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  'Change wallet address',
                  style: boldHeading,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                child: TextField(
                  textInputAction: TextInputAction.next,
                  // goes to next text field
                  maxLines: 3,
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
                      hintText: 'new wallet address'),
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
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 25),
                child: Text(
                    'Changing your DeSo wallet address will update your future listings.',
                    style: regularTextStyle),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 45),
                  child:
                      Text('Current wallet address:', style: regularTextStyle),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                padding: EdgeInsets.all(5.0),
                margin:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                child: SelectableText(
                  'BC1YLiFNARSWF6qtXM5acrS7q8VWPeeS2gycVBtqLALkE4c1V3kx4US',
                  style: smallBold,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppBottomNavBar2(),
    );
  }
}
