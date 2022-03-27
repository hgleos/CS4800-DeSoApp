import 'package:flutter/material.dart';
import 'package:android_deso_app/Screens/Components/nft_border_side.dart';
import 'package:android_deso_app/constants.dart';

// The widget will be contained inside an InkWell for tap features
NftListing(BuildContext context, String nftImage, String nftTitle,
    String nftUsername, String nftPrice) {
  double marginDistance = 20;
  Image image;
  if (nftImage.startsWith('https://')) {
    image = Image.network(nftImage, fit: BoxFit.cover);
  } else {
    image = Image.asset(nftImage, fit: BoxFit.cover);
  }

  return Column(
    children: [
      AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          decoration: BoxDecoration(
              border: Border(
            top: NftBorderSide(context),
            right: NftBorderSide(context),
            left: NftBorderSide(context),
          )),
          child: image,
          margin: EdgeInsets.only(top: marginDistance, left: marginDistance, right: marginDistance),
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
              nftTitle,
              style: nftTitleStyle,
            ),
            alignment: Alignment.centerLeft,
          ),
        ),
        margin: EdgeInsets.only(left: marginDistance, right: marginDistance),
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
            child: Text('by ' + nftUsername, style: nftUserStyle),
            alignment: Alignment.centerLeft,
          ),
        ),

        margin: EdgeInsets.only(left: marginDistance, right: marginDistance),
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
            child: Text(nftPrice + ' DESO', style: nftPriceStyle),
            alignment: Alignment.centerLeft,
          ),
        ),
        margin: EdgeInsets.only(bottom: marginDistance, left: marginDistance, right: marginDistance),
      ),
    ],
  );
}
