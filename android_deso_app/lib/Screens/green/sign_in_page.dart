import 'package:android_deso_app/Database/database.dart';
import 'package:flutter/material.dart';

import 'create_account.dart';
import 'forgot_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController usernameCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();

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
            margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
            child: Text('Sign In',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: TextField(
              controller: usernameCont,
              decoration: InputDecoration(
                labelText: 'username',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: TextField(
              controller: passwordCont,
              decoration: InputDecoration(
                labelText: 'password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            width: 200,
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: ElevatedButton(
                onPressed: (){
                  if(login(usernameCont.text, passwordCont.text)){
                    Navigator.pop(context);
                    setState(() {

                    });
                  };

                },
                child: Text('Continue')
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: TextButton(
                onPressed: (){
                  Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ForgotPage()),
                  );
                },
                child: Text('Forgot username or password?',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Text('----- New to DeSoApp? -----',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: OutlinedButton(
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => CreateAccount()),
                  );
                },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.grey[300],
                side: BorderSide(width: 1)
              ),
                child: Text('Create your DeSoApp account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
            ),
          )
        ],
      ),
    );
  }
}
