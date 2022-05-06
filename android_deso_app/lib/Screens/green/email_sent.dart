import 'package:flutter/material.dart';

class EmailSent extends StatefulWidget {
  const EmailSent({Key? key}) : super(key: key);

  @override
  _EmailSentState createState() => _EmailSentState();
}

class _EmailSentState extends State<EmailSent> {
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
            Icon(Icons.email_outlined,
              size: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text('E-mail sent!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text('If there is a username associated with the '
                  'email, we have sent it to the email with '
                  'instructions on resetting your password. For '
                  'security, passwords must be reset within 24 '
                  'hours of making your request. If you don\'t see '
                  'an email from us please:',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text('\u2022 Check your spam folder\n'
                  '\u2022 Resubmit your request\n'
                  '\u2022 Contact support',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                ),
              ),
            )
          ]
      ),
    );
  }
}
