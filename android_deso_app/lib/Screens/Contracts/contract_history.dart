import 'package:android_deso_app/Screens/Contracts/single_contract_listing_page.dart';
import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../Components/listing.dart';
import '../Components/nft_listing.dart';

class ContractHistoryPage extends StatefulWidget {
  const ContractHistoryPage({Key? key}) : super(key: key);

  @override
  State<ContractHistoryPage> createState() => _ContractHistoryPageState();
}

class _ContractHistoryPageState extends State<ContractHistoryPage> {
  // temp data to show a listing in the contracts page
  List listingImages = ['lib/assets/poke1.jpg', 'lib/assets/poke2.png', 'lib/assets/poke3.png',];
  String title = 'PIKACHU ILLUSTRATOR PSA 9 MINT';
  String seller = 'smpratte';
  String price = '138985.4065323141';
  String desc = 'The Most Valuable Pokemon Card: The Pikachu Illustrator PSA 9 Mint'
  'This card is the Holy Grail of Pokemon; The most valuable Pokemon card in existence!'
  'Rarer than Honus Wagner, Mickey Mantle, Black Lotus, & Charizard'
  'The Pikachu Illustrator was only awarded to the winners of the Original Illustration Contest in Japan, 1998.  Estimated 20-39 copies'
  'This is the Most Documented Copy of the Illustrator!  It was the only known Illustrator for a decade!'
  'This exact Illustrator was the first PSA 9 Mint example'
  'This card was featured in the PSA/SMR 2017 Trophy Card Article (image below)'
  'This card is the Bulbapedia stock image (image below)'
  'There is no card in this hobby that combines Value, Rarity, History than the Pikachu Illustrator.'
  'The pictures are of the exact card';
  Listing temp = Listing('','','');

  @override
  void initState() {
    temp = Listing(title, seller, price, images: listingImages, description: desc);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: desoAppBar(context, true),
      body: SingleChildScrollView(
        child: Center(
          // all the NFT listings
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .02),
                child: Text(
                  'Contract History',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              // A single NFT listing - InkWell makes it clickable
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SingleContractListingPage(temp: temp)),
                  );
                },
                highlightColor: Colors.blue[200],
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: NftListing(
                    context,
                    listingImages,
                    title,
                    seller,
                    price),
              ),

              InkWell(
                onTap: () {},
                highlightColor: Colors.blue[200],
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: NftListing(context, ['lib/assets/default image.png'],
                    'nftTitle', 'nftUsername', 'nftPrice'),
              ),

              // Overflow example
              InkWell(
                onTap: () {},
                highlightColor: Colors.blue[200],
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: NftListing(
                    context,
                    ['https://bg.systweak.com/blogs/wp-content/uploads/2022/03/How-To-Download-NVIDIA-GeForce-RTX-3050-Driver-1280x720.jpg'],
                    'MSI Gaming GeForce RTX 3050 8GB GDRR6 128-Bit HDMI/DP PCIe 4 Torx Twin Fans Ampere OC Graphics Card (RTX 3050 Ventus 2X 8G OC)',
                    'supercalifragilisticexpialidociouspneumonoultramicroscopicsilicovolcanoconiosis',
                    '99999999999999999999999999999999999999999999999999.999999999'),
              ),

              // testing no image size
              InkWell(
                onTap: () {},
                highlightColor: Colors.blue[200],
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: NftListing(
                    context,
                    ['https://i.pinimg.com/originals/35/85/69/358569e6abb282196ea4b7d7e9488c8f.jpg'],
                    'Image that isn\'t 16:9 ratio',
                    'Person321',
                    '505.123456789'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
