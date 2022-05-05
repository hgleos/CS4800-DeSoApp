import 'package:flutter/material.dart';

import '../Elements/app_bar.dart';

class VerifyWallet extends StatefulWidget {
  const VerifyWallet({Key? key}) : super(key: key);

  @override
  _VerifyWalletState createState() => _VerifyWalletState();
}

class _VerifyWalletState extends State<VerifyWallet> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: desoAppBar(context, true),
      body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: LinearProgressIndicator(
                value: 0.8,
                backgroundColor: Colors.grey,
                color: Colors.blue,
                minHeight: 10,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text('19m59s',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text('Send DeSo from the wallet you entered to the '
                  'following wallet address. You have the remaining '
                  'time to send the payment. The DeSo will be '
                  'returned back to your wallet.\n\n'
                  'Send 0.008 DeSo to this address:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black
                      )
                    ),
                    child: Text('01234DesoWalletAddress56789BeepBoop694201337',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Icon(Icons.content_copy,
                    size: 50,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 150,
              child: Image(
                image: AssetImage('lib/assets/SampleQRCode.png'),
              ),
            ),
            Container(
              width: 200,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Your wallet address')
              ),
            ),
          ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.handshake_outlined),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: ''
          )
        ],
      ),
    );
  }
}
