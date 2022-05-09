import 'package:android_deso_app/Database/database.dart';
import 'package:android_deso_app/Database/listing.dart';
import 'package:android_deso_app/Screens/Components/nft_listing.dart';
import 'package:android_deso_app/Screens/Contracts/contract_history.dart';
import 'package:android_deso_app/Screens/Contracts/single_contract_listing_page.dart';
import 'package:flutter/material.dart';

class ContractsPage extends StatefulWidget {
  const ContractsPage({Key? key}) : super(key: key);

  @override
  State<ContractsPage> createState() => _ContractsPageState();
}

class _ContractsPageState extends State<ContractsPage> {
  TextEditingController search = TextEditingController();
  List<Listing> contractFeed = [];
  // temp data to show a listing in the contracts page
  // List listingImages = ['lib/assets/1.jpg', 'lib/assets/2.jpg', 'lib/assets/3.jpg', 'lib/assets/4.jpg'];
  // String title = 'Yeezy Red Octobers';
  // String seller = 'ShoeCollector';
  // String price = '1000.495888773';
  // Listing temp = Listing(1, '','','');

  @override
  void initState() {
    // temp = Listing(1, title, seller, price, images: listingImages);
    // feed.add(temp);
    contractFeed = getCurrentContracts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  // A single NFT listing - InkWell makes it clickable
                  for(var i in contractFeed) createInkWell(i),
                 ],
               ),
             ),
            ),
          ),
        ]
      ),
      bottomNavigationBar: Container(
        child: BottomAppBar(
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.only(),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContractHistoryPage()),
                  );
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff178de8)),
                    fixedSize: MaterialStateProperty.all<Size>(Size(270, 55)),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                        TextStyle(fontSize: 20, color: Colors.white))),
                child: Text(
                  'Contract History',
                )),
          ),
          elevation: 0,
        ),
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
