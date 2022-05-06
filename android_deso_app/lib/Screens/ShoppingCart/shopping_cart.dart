import 'package:android_deso_app/Screens/Components/nft_listing.dart';
import 'package:android_deso_app/Screens/Contracts/single_contract_listing_page.dart';
import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/ShoppingCart/payment.dart';
import 'package:android_deso_app/Screens/ShoppingCart/sample_nft_data.dart';
import 'package:flutter/material.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // List of NFTs here
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SingleContractListingPage(temp: SampleNFTData.nfts[0])));
                    },
                    highlightColor: Colors.blue[200],
                    customBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                        children: [
                          NftListing(context, SampleNFTData.nfts[0].images, SampleNFTData.nfts[0].title, SampleNFTData.nfts[0].seller, SampleNFTData.nfts[0].price),
                          Positioned(child: Icon(Icons.delete, size: 50, color: Color.fromARGB(255, 70, 70, 70)), right: 15, top: 20)
                        ]
                    )
                )
              ]
          )
        )
      ),

        // Checkout items button
      bottomNavigationBar: Container(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentPage()));
          }, // TODO go to checkout screen
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color(0xff178de8)),
            fixedSize: MaterialStateProperty.all<Size>(Size(270, 55)),
            textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 20, color: Colors.white))
          ),
          child: Text('Checkout items')
        )
      )
    );
  }
}