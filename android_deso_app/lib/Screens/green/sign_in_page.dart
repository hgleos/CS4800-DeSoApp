import 'package:deso_app/Screens/green/create_account.dart';
import 'package:deso_app/Screens/green/forgot_page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
              decoration: InputDecoration(
                labelText: 'username',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: TextField(
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
                onPressed: (){},
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
