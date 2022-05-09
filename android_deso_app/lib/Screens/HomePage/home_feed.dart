import 'package:android_deso_app/Database/database.dart';
import 'package:android_deso_app/Database/listing.dart';
import 'package:android_deso_app/Screens/HomePage/home_feed_listing_details.dart';
import 'package:flutter/material.dart';

import '../Components/nft_listing.dart';

class HomeFeed extends StatefulWidget {
  const HomeFeed({Key? key}) : super(key: key);

  @override
  State<HomeFeed> createState() => _HomeFeedState();
}

class _HomeFeedState extends State<HomeFeed> {
  TextEditingController search = TextEditingController();
  List<Listing> homeFeed = [];
  List<Listing> searchFeed = [];

  @override
  void initState() {
    homeFeed = getFeed();
    super.initState();
  }

  findSearch(TextEditingController search){
    if (search.text == ''){
      setState(() {
        homeFeed = getFeed();
      });
    } else {
      homeFeed = getFeed();
      searchFeed = [];
      for(var item in homeFeed){
        if(item.title.toLowerCase().contains(search.text.toLowerCase()) || item.seller.toLowerCase().contains(search.text.toLowerCase()) || item.description.toLowerCase().contains(search.text.toLowerCase())){
          searchFeed.add(item);
        }
      }
      setState(() {
        homeFeed = searchFeed;
      });
    }
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
                  hintText: 'Search',
                  suffixIcon: IconButton(
                      onPressed: (){
                        findSearch(search);
                      },
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
                      // iterating through the list to create individual inkwells
                      for(var i in homeFeed) createInkWell(i),
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
        print(item.listingID);
        print(item.status);
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ListingDetails(temp: item)),
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
