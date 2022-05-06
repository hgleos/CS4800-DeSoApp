import 'package:flutter/material.dart';

import '../Elements/app_bar.dart';

class BuyNFT extends StatefulWidget {
  const BuyNFT({Key? key}) : super(key: key);

  @override
  _BuyNFTState createState() => _BuyNFTState();
}

class _BuyNFTState extends State<BuyNFT> {
  late PageController _pageController = PageController(viewportFraction: 0.8, initialPage: 1);

  List<String> images = [
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];

  int activePage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  AnimatedContainer slider(images, pagePosition, active) {
    double margin = active ? 10 : 20;

    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(images[pagePosition]))),
    );
  }

  imageAnimation(PageController animation, images, pagePosition) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, widget) {
        print(pagePosition);

        return SizedBox(
          width: 200,
          height: 200,
          child: widget,
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        child: Image.network(images[pagePosition]),
      ),
    );
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.black : Colors.black26,
            shape: BoxShape.circle),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: desoAppBar(context, true),
      body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: PageView.builder(
                  itemCount: images.length,
                  pageSnapping: true,
                  controller: _pageController,
                  onPageChanged: (page) {
                    setState(() {
                      activePage = page;
                    });
                  },
                  itemBuilder: (context, pagePosition) {
                    bool active = pagePosition == activePage;
                    return slider(images,pagePosition,active);
                  }),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(images.length,activePage)),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 75,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black
                  )
              ),
              child: Text('Title: Cool Space Paintings\n'
                'By: SpaceDude556\n'
                'Price: 123,456,789.0 DeSo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),),
            ),
            Container(
              height: 30,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black
                  )
              ),
              child: Text('tag1, tag2, tag3, tag4',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),),
            ),
            Container(
              height: 75,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black
                  )
              ),
              child: Text('Description: Cool space stuff like rocks, rocks, and more rocks '
                'for all you space enjoyers out there.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),),
            ),
            Container(
              width: 200,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Add to cart')
              ),
            ),
          ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.handshake_outlined),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: ''
          )
        ],
      ),
    );
  }
}
