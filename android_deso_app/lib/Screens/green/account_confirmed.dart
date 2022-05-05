import 'package:deso_app/Screens/Elements/app_bar.dart';
import 'package:flutter/material.dart';

class AccountConfirmed extends StatefulWidget {
  const AccountConfirmed({Key? key}) : super(key: key);

  @override
  _AccountConfirmedState createState() => _AccountConfirmedState();
}

class _AccountConfirmedState extends State<AccountConfirmed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: desoAppBar(context, true),
      body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 10),
              child: Text(
                'Account created',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'Your account has been created and you can '
                    'safely return to the main page',
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 200,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Continue')
              ),
            ),
          ]
      ),
    );
  }
}
