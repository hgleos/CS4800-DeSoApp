import 'package:android_deso_app/Screens/Components/nft_listing.dart';
import 'package:android_deso_app/Screens/Listings/create_listing_page.dart';
import 'package:android_deso_app/Screens/Listings/single_listing_page.dart';
import 'package:flutter/material.dart';

class ListingsPage extends StatefulWidget {
  const ListingsPage({Key? key}) : super(key: key);

  @override
  State<ListingsPage> createState() => _ListingsPageState();
}

class _ListingsPageState extends State<ListingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          // all the NFT listings
          child: Column(
            children: [
              // A single NFT listing - InkWell makes it clickable
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SingleListingPage()),
                  );
                },
                highlightColor: Colors.blue[200],
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: NftListing(
                    context,
                    'https://www.topgear.com/sites/default/files/images/news-article/2017/11/14407fdb851d08766e90724827008664/2019-corvette-zr1-worldpremier-02.jpg?w=1280&h=720',
                    'Chevrolet Corvette ZR1 - 2019',
                    'jellysmith987',
                    '747.495888773'),
              ),

              InkWell(
                onTap: () {},
                highlightColor: Colors.blue[200],
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: NftListing(context, 'lib/assets/default image.png',
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
                    'https://bg.systweak.com/blogs/wp-content/uploads/2022/03/How-To-Download-NVIDIA-GeForce-RTX-3050-Driver-1280x720.jpg',
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
                    'https://i.pinimg.com/originals/35/85/69/358569e6abb282196ea4b7d7e9488c8f.jpg',
                    'Image that isn\'t 16:9 ratio',
                    'Person321',
                    '505.123456789'),
              ),
            ],
          ),
        ),
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
                        builder: (context) => const CreateListingPage()),
                  );
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff178de8)),
                    fixedSize: MaterialStateProperty.all<Size>(Size(270, 55)),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                        TextStyle(fontSize: 20, color: Colors.white))),
                child: Text(
                  'Create a listing',
                )),
          ),
          elevation: 0,
        ),
      ),
    );
  }
}
