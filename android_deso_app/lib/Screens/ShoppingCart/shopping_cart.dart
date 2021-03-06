import 'package:android_deso_app/Database/database.dart';
import 'package:android_deso_app/Screens/Components/nft_listing.dart';
import 'package:android_deso_app/Screens/Contracts/single_contract_listing_page.dart';
import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/ShoppingCart/cart_feed_listing_details.dart';
import 'package:android_deso_app/Screens/ShoppingCart/payment.dart';
import 'package:android_deso_app/Screens/ShoppingCart/sample_nft_data.dart';
import 'package:android_deso_app/Screens/green/sign_in_page.dart';
import 'package:flutter/material.dart';

import '../../Database/listing.dart';
import '../HomePage/home_feed_listing_details.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    if (cart.isNotEmpty) {
      return Scaffold(
        // List of NFTs here
          body: SingleChildScrollView(
              child: Center(
                  child: Column(
                      children: [
                        // InkWell(
                        //     onTap: () {
                        //       Navigator.push(context, MaterialPageRoute(builder: (context) => SingleContractListingPage(temp: SampleNFTData.nfts[0])));
                        //     },
                        //     highlightColor: Colors.blue[200],
                        //     customBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        //     child: Stack(
                        //         children: [
                        //           NftListing(context, SampleNFTData.nfts[0].images, SampleNFTData.nfts[0].title, SampleNFTData.nfts[0].seller, SampleNFTData.nfts[0].price),
                        //           Positioned(child: Icon(Icons.delete, size: 50, color: Color.fromARGB(255, 70, 70, 70)), right: 15, top: 20)
                        //         ]
                        //     )
                        // )
                        // A single NFT listing - InkWell makes it clickable
                        // iterating through the list to create individual inkwells
                        for(var i in getCartFeed()) createInkWell(i),
                      ]
                  )
              )
          ),

          // Checkout items button
          bottomNavigationBar: Container(
              child: ElevatedButton(
                  onPressed: () {
                    if (loggedIn) {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => PaymentPage()));
                    } else {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => SignInPage()));
                    }
                  }, // TODO go to checkout screen
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xff178de8)),
                      fixedSize: MaterialStateProperty.all<Size>(Size(270, 55)),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                          TextStyle(fontSize: 20, color: Colors.white))
                  ),
                  child: Text('Checkout items')
              )
          )
      );
    } else {
      return Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text("Add items to your cart for checkout",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
  }

  Widget createInkWell(Listing item){
    return InkWell(
      onTap: () {
        print(item.listingID);
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CartListingDetails(temp: item)),
        );
      },
      highlightColor: Colors.blue[200],
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          NftListing(context, item.images, item.title, item.seller, item.price),
          Positioned(child: Icon(Icons.delete, size: 50, color: Color.fromARGB(255, 70, 70, 70)), right: 15, top: 20)
        ]
      )
    );
  }


}