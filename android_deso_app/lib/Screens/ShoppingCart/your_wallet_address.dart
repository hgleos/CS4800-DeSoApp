import 'package:android_deso_app/Screens/Components/nft_listing.dart';
import 'package:android_deso_app/Screens/Contracts/single_contract_listing_page.dart';
import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/ShoppingCart/payment_sent.dart';
import 'package:android_deso_app/Screens/ShoppingCart/sample_nft_data.dart';
import 'package:android_deso_app/constants.dart';
import 'package:flutter/material.dart';

import '../Settings/update_wallet_page.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: desoAppBar(context, true),
        body: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: SingleChildScrollView(
                child: Center(
                    child: Column(
                        children: [
                          Text('Your Wallet Address', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                          SizedBox(height: 20),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const UpdateWalletPage()));
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xff178de8)),
                                  fixedSize: MaterialStateProperty.all<Size>(Size(270, 55)),
                                  textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 20, color: Colors.white))
                              ),
                              child: Text('Change wallet address')
                          ),
                          SizedBox(height: 20),
                          Text('Current wallet address', style: regularTextStyle),
                          Container(
                              decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),
                              padding: EdgeInsets.all(5.0),
                              child: Row(
                                  children: [
                                    Expanded(
                                        child: SelectableText('BC1YLiFNARSWF6qtXM5acrS7q8VWPeeS2gycVBtqLALkE4c1V3kx4US', style: smallBold)
                                    ),
                                    Icon(Icons.content_copy)
                                  ]
                              )
                          ),
                          SizedBox(height: 20),
                          Image.asset('lib/assets/qr.png')
                        ]
                    )
                )
            )
        ),

        // Checkout items button
        bottomNavigationBar: Container(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xff178de8)),
                    fixedSize: MaterialStateProperty.all<Size>(Size(270, 55)),
                    textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 20, color: Colors.white))
                ),
                child: Text('Return to payment')
            )
        )
    );
  }
}