import 'package:deso_app/Screens/green/email_sent.dart';
import 'package:flutter/material.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({Key? key}) : super(key: key);

  @override
  _ForgotPageState createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
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
            margin: EdgeInsets.only(top: 20, bottom: 50),
            child: Text(
              'Forgot your username\n'
                  'or password?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'email',
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
                    context, MaterialPageRoute(builder: (context) => EmailSent()),
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
