import 'package:android_deso_app/Screens/Components/nft_listing.dart';
import 'package:android_deso_app/Screens/Contracts/single_contract_listing_page.dart';
import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/ShoppingCart/sample_nft_data.dart';
import 'package:android_deso_app/Screens/ShoppingCart/your_wallet_address.dart';
import 'package:android_deso_app/constants.dart';
import 'package:flutter/material.dart';

class PaymentSentPage extends StatefulWidget {
  const PaymentSentPage({Key? key}) : super(key: key);

  @override
  State<PaymentSentPage> createState() => _PaymentSentPageState();
}

class _PaymentSentPageState extends State<PaymentSentPage> {
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
                          Text('Payment Sent', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                          SizedBox(height: 20),
                          Text('Your payment has been sent but not yet verified on the blockchain. '
                              'You can view your contracts on the Contracts page.', style: regularTextStyle),
                          SizedBox(height: 20),
                          Icon(Icons.check_circle, size: 125)
                        ]
                    )
                )
            )
        ),

        // Checkout items button
        bottomNavigationBar: Container(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SingleContractListingPage(temp: SampleNFTData.nfts[0])));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xff178de8)),
                    fixedSize: MaterialStateProperty.all<Size>(Size(270, 55)),
                    textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 20, color: Colors.white))
                ),
                child: Text('View contract')
            )
        )
    );
  }
}