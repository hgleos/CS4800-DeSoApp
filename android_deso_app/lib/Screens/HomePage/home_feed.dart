import 'package:android_deso_app/Screens/Components/listing.dart';
import 'package:android_deso_app/Screens/Components/listing_details.dart';
import 'package:flutter/material.dart';

import '../Components/nft_listing.dart';

class HomeFeed extends StatefulWidget {
  const HomeFeed({Key? key}) : super(key: key);

  @override
  State<HomeFeed> createState() => _HomeFeedState();
}

class _HomeFeedState extends State<HomeFeed> {
  TextEditingController search = TextEditingController();
  List<Listing> feed = [];
  List<Listing> homeFeed = [];
  List<Listing> searchFeed = [];
  Listing item1 = Listing('Mechanical Keyboard', 'BestKeyboard', '5',
      images: ['https://pbs.twimg.com/media/ELu5mLVU0AE8RIq?format=jpg&name=large',
        'https://pbs.twimg.com/media/ELu5nMVUwAAkluN?format=jpg&name=large',
        'https://pbs.twimg.com/media/ELu5oKEUwAA0SsO?format=jpg&name=large',
        'https://pbs.twimg.com/media/ELu5pOWVUAEMT0R?format=jpg&name=large'
      ]);
  Listing item2 = Listing('Microphone', 'CasualSeller', '2.477',
      images: ['https://images.reverb.com/image/upload/s--QKYKT4qC--/f_auto,t_supersize/v1649451231/kelm8ncxomrk1xxhgl7w.jpg',
        'https://images.reverb.com/image/upload/s--LUkEhKQf--/f_auto,t_supersize/v1649451233/fpyqwztrkgr8trwq6rrk.jpg',
        'https://images.reverb.com/image/upload/s--_vi0y8Yy--/f_auto,t_supersize/v1649451234/spbg333v2ivaalljmur5.jpg',
        'https://images.reverb.com/image/upload/s--uJ7QfDRn--/f_auto,t_supersize/v1649451234/vyjrqmcv61jga6jglqpm.jpg',
        'https://images.reverb.com/image/upload/s--aVz6xxJt--/f_auto,t_supersize/v1649451234/ldcp7svx7ejrsq8ev9a7.jpg',
        'https://images.reverb.com/image/upload/s--soP0Ve1V--/f_auto,t_supersize/v1649451234/ezuzo6kjuwm4iq2fdv0g.jpg',
      ]);
  Listing item3 = Listing('iPhone 17', 'TheItemIsReal', '555.343',
      images: ['https://www.cultofmac.com/wp-content/uploads/2022/05/iPhone-Studio-De-Rosa-1536x864.jpg?ezimgfmt=ng%3Awebp%2Fngcb24',
        'https://www.cultofmac.com/wp-content/uploads/2022/05/iPhone-Studio-De-Rosa-2.jpg?ezimgfmt=ng:webp/ngcb24'
        'https://www.cultofmac.com/wp-content/uploads/2022/05/iPhone-Studio-De-Rosa-3.jpg?ezimgfmt=ng:webp/ngcb24'
      ]);
  Listing item4 = Listing('Samsung Galaxy S34', 'TheItemIsReal', '525.4345',
      images: ['https://www.gizbot.com/images/2017-03/samsung-galaxy-x-foldable-phone-concept_148895740800.jpg',
        'https://www.gizbot.com/images/2017-03/samsung-galaxy-x-foldable-phone-concept_148895736970.jpg',
        'https://www.gizbot.com/images/2017-03/samsung-galaxy-x-foldable-phone-concept_148895736960.jpg',
        'https://www.gizbot.com/images/2017-03/samsung-galaxy-x-foldable-phone-concept_148895736950.jpg',
        'https://www.gizbot.com/images/2017-03/samsung-galaxy-x-foldable-phone-concept_148895736940.jpg'
      ]);
  Listing item5 = Listing('720Hz Monitor', 'CheapDealz', '1938.435632543',
      images: ['https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/50ccd0114240597.60379bba2c44a.jpg',
        'https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/969abd114240597.60379bba2a453.jpg',
        'https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/c99e87114240597.60379bba2db2d.jpg',
        'https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/acfd56114240597.60379bba2cff5.jpg',
        'https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/2ea081114240597.60379bba2f85d.jpg',
      ]);

  @override
  void initState() {
    feed = [item1, item2, item3, item4, item5];
    homeFeed = feed;
    super.initState();
  }

  findSearch(TextEditingController search){
    if (search.text == ''){
      setState(() {
        homeFeed = feed;
      });
    } else {
      for(var item in homeFeed){
        if(item.title.contains(search.text) || item.seller.contains(search.text) || item.description.contains(search.text)){
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
