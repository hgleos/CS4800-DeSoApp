import 'package:android_deso_app/Screens/Components/nft_listing.dart';
import 'package:android_deso_app/Screens/Contracts/single_contract_listing_page.dart';
import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/ShoppingCart/sample_nft_data.dart';
import 'package:android_deso_app/constants.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
                          Text('Complete payment', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                          SizedBox(height: 20),
                          Text('Send the DeSo from your current address to the following wallet '
                              'address to confirm your payment.', style: regularTextStyle),
                          SizedBox(height: 20),
                          RichText(text: TextSpan(
                              text: 'Send ', style: TextStyle(fontSize: 16, color: Colors.black),
                              children: [
                                TextSpan(text: '4623.4745657', style: smallBold),
                                TextSpan(text: ' DeSo to this address:', style: regularTextStyle)
                              ]
                          )
                          ),
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
                onPressed: () {}, // TODO go to wallet address screen
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xff178de8)),
                    fixedSize: MaterialStateProperty.all<Size>(Size(270, 55)),
                    textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 20, color: Colors.white))
                ),
                child: Text('Your wallet address')
            )
        )
    );
  }
}