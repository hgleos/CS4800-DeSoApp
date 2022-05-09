import 'package:android_deso_app/Screens/Components/image_carousel.dart';
import 'package:android_deso_app/Database/listing.dart';
import 'package:android_deso_app/Screens/Contracts/contract_progress.dart';
import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/Elements/app_bottom_navigation_bar2.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../../constants.dart';
import '../Components/nft_border_side.dart';

// TODO figure out how to go between multiple images (swiping is fine but I think tapping right or left is more convenient)
// https://stackoverflow.com/questions/58155567/switch-images-with-gesturedetector-in-flutter

class CartListingDetails extends StatefulWidget {
  CartListingDetails({Key? key, required this.temp}) : super(key: key);

  Listing temp;

  @override
  State<CartListingDetails> createState() => _CartListingDetailsState();
}

class _CartListingDetailsState extends State<CartListingDetails> {
  double marginDistance = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: desoAppBar(context, true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // detect tap right or left
            GestureDetector(
              onTap: () { print("TAPPED"); },
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                      top: NftBorderSide(context),
                      right: NftBorderSide(context),
                      left: NftBorderSide(context),
                    )),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .25,
                    child: ImageCarousel(listingImages: widget.temp.images,)),
                margin: EdgeInsets.only(
                    top: marginDistance,
                    left: marginDistance,
                    right: marginDistance),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 3),
              // necessary width because otherwise if text is too small the scroll messes it up
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: NftBorderSide(context),
                    left: NftBorderSide(context),
                    right: NftBorderSide(context),
                  )),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Align(
                  child: Text(
                    widget.temp.title,
                    style: nftTitleStyle,
                  ),
                  alignment: Alignment.centerLeft,
                ),
              ),
              margin:
              EdgeInsets.only(left: marginDistance, right: marginDistance),
            ),
            Container(
              padding: EdgeInsets.only(left: 3),
              // necessary width because otherwise if text is too small the scroll messes it up
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    left: NftBorderSide(context),
                    right: NftBorderSide(context),
                  )),

              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Align(
                  child: Text('by ' + widget.temp.seller, style: nftUserStyle),
                  alignment: Alignment.centerLeft,
                ),
              ),

              margin:
              EdgeInsets.only(left: marginDistance, right: marginDistance),
            ),
            Container(
              padding: EdgeInsets.only(left: 3),
              // necessary width because otherwise if text is too small the scroll messes it up
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    left: NftBorderSide(context),
                    right: NftBorderSide(context),
                    bottom: NftBorderSide(context),
                  )),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Align(
                  child: Text(widget.temp.price + ' DESO', style: nftPriceStyle),
                  alignment: Alignment.centerLeft,
                ),
              ),
              margin:
              EdgeInsets.only(left: marginDistance, right: marginDistance),
            ),
            Scrollbar(
              radius: Radius.circular(5),
              thickness: marginDistance,
              child: Container(
                padding: EdgeInsets.only(left: 3),
                // necessary width because otherwise if text is too small the scroll messes it up
                height: MediaQuery.of(context).size.height * .35,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      left: NftBorderSide(context),
                      right: NftBorderSide(context),
                      bottom: NftBorderSide(context),
                    )),
                child: SingleChildScrollView(
                  child: Align(
                    child: Text(
                      widget.temp.description,
                      style: nftDescriptionStyle,
                    ),
                    alignment: Alignment.topLeft,
                  ),
                ),
                margin:
                EdgeInsets.only(left: marginDistance, right: marginDistance),
              ),

            ),
            // Container(
            //   margin: EdgeInsets.only(top: 25),
            //   child: ElevatedButton(
            //       onPressed: () {
            //       },
            //       style: ButtonStyle(
            //           backgroundColor:
            //           MaterialStateProperty.all<Color>(Color(0xff178de8)),
            //           fixedSize: MaterialStateProperty.all<Size>(Size(270, 55)),
            //           textStyle: MaterialStateProperty.all<TextStyle>(
            //               TextStyle(fontSize: 20, color: Colors.white))),
            //       child: Text(
            //         'Add to Cart',
            //       )),
            // ),
          ],
        ),
      ),
      // bottomNavigationBar: AppBottomNavBar2(),
    );
  }
}
