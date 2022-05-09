import 'package:android_deso_app/Screens/Contracts/single_contract_listing_page.dart';
import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:flutter/material.dart';
import '../../Database/database.dart';
import '../../Database/listing.dart';
import '../Components/nft_listing.dart';

class ContractHistoryPage extends StatefulWidget {
  const ContractHistoryPage({Key? key}) : super(key: key);

  @override
  State<ContractHistoryPage> createState() => _ContractHistoryPageState();
}

class _ContractHistoryPageState extends State<ContractHistoryPage> {
  TextEditingController search = TextEditingController();
  List<Listing> historyFeed = [];
  // temp data to show a listing in the contracts page
  // List listingImages = ['lib/assets/poke1.jpg', 'lib/assets/poke2.png', 'lib/assets/poke3.png',];
  // String title = 'PIKACHU ILLUSTRATOR PSA 9 MINT';
  // String seller = 'smpratte';
  // String price = '138985.4065323141';
  // String desc = 'The Most Valuable Pokemon Card: The Pikachu Illustrator PSA 9 Mint'
  // 'This card is the Holy Grail of Pokemon; The most valuable Pokemon card in existence!'
  // 'Rarer than Honus Wagner, Mickey Mantle, Black Lotus, & Charizard'
  // 'The Pikachu Illustrator was only awarded to the winners of the Original Illustration Contest in Japan, 1998.  Estimated 20-39 copies'
  // 'This is the Most Documented Copy of the Illustrator!  It was the only known Illustrator for a decade!'
  // 'This exact Illustrator was the first PSA 9 Mint example'
  // 'This card was featured in the PSA/SMR 2017 Trophy Card Article (image below)'
  // 'This card is the Bulbapedia stock image (image below)'
  // 'There is no card in this hobby that combines Value, Rarity, History than the Pikachu Illustrator.'
  // 'The pictures are of the exact card';
  // Listing temp = Listing(1, '','','');

  @override
  void initState() {
    // temp = Listing(1, title, seller, price, images: listingImages, description: desc);
    historyFeed = getContractHistory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: desoAppBar(context, loggedIn),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black)
            ),
            child: TextField(
              controller: search,
              decoration: InputDecoration(
                hintText: 'Search your contracts',
                suffixIcon: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.search)),
              ),
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
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
                  for(var i in historyFeed) createInkWell(i),
                ],
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }

  Widget createInkWell(Listing item){
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SingleContractListingPage(temp: item)),
        );
      },
      highlightColor: Colors.blue[200],
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: NftListing(
          context,
          item.images,
          item.title,
          item.seller,
          item.price),
    );
  }

}
