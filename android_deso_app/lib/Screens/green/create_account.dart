import 'package:flutter/material.dart';

import 'account_confirmed.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: SizedBox(
          width: MediaQuery.of(context).size.width * 0.40,
          child: Column(
            children: [
              TextButton(
                onPressed: (){},
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Image(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('lib/assets/DeSo App Logo.png')
                      ),
                    ),
                    Text("DeSoApp",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text('* is a mandatory field',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'email*',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'username*',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Text('password must contain at least 8 characters',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'password*',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'confirm password*',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'wallet address*',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              width: 200,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => AccountConfirmed()),
                    );
                  },
                  child: Text('Continue')
              ),
            ),
          ]
      ),
    );
  }
}
