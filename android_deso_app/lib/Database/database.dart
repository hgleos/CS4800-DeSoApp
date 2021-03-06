import 'dart:developer';

import 'package:android_deso_app/Database/user.dart';

import 'listing.dart';

User user1 = User('email@domain.com', "123456", "CheapDealz");
User user2 = User('email@domain.edu', "123456", "RealItemsOnly");
User user3 = User('email@domain.org', "123456", "TheBestSeller");

Listing item1 = Listing(1, 'Mechanical Keyboard', user1.username, '5',
  images: ['https://pbs.twimg.com/media/ELu5mLVU0AE8RIq?format=jpg&name=large',
    'https://pbs.twimg.com/media/ELu5nMVUwAAkluN?format=jpg&name=large',
    'https://pbs.twimg.com/media/ELu5oKEUwAA0SsO?format=jpg&name=large',
    'https://pbs.twimg.com/media/ELu5pOWVUAEMT0R?format=jpg&name=large'
]);
Listing item2 = Listing(2, 'Microphone', user1.username, '2.477',
  images: ['https://images.reverb.com/image/upload/s--QKYKT4qC--/f_auto,t_supersize/v1649451231/kelm8ncxomrk1xxhgl7w.jpg',
    'https://images.reverb.com/image/upload/s--LUkEhKQf--/f_auto,t_supersize/v1649451233/fpyqwztrkgr8trwq6rrk.jpg',
    'https://images.reverb.com/image/upload/s--_vi0y8Yy--/f_auto,t_supersize/v1649451234/spbg333v2ivaalljmur5.jpg',
    'https://images.reverb.com/image/upload/s--uJ7QfDRn--/f_auto,t_supersize/v1649451234/vyjrqmcv61jga6jglqpm.jpg',
    'https://images.reverb.com/image/upload/s--aVz6xxJt--/f_auto,t_supersize/v1649451234/ldcp7svx7ejrsq8ev9a7.jpg',
    'https://images.reverb.com/image/upload/s--soP0Ve1V--/f_auto,t_supersize/v1649451234/ezuzo6kjuwm4iq2fdv0g.jpg',
]);
Listing item3 = Listing(3, 'iPhone 17', user2.username, '555.343',
  images: ['https://www.cultofmac.com/wp-content/uploads/2022/05/iPhone-Studio-De-Rosa-1536x864.jpg?ezimgfmt=ng%3Awebp%2Fngcb24',
    'https://www.cultofmac.com/wp-content/uploads/2022/05/iPhone-Studio-De-Rosa-2.jpg?ezimgfmt=ng:webp/ngcb24'
    'https://www.cultofmac.com/wp-content/uploads/2022/05/iPhone-Studio-De-Rosa-3.jpg?ezimgfmt=ng:webp/ngcb24'
]);
Listing item4 = Listing(4, 'Samsung Galaxy S34', user2.username, '525.4345',
  images: ['https://www.gizbot.com/images/2017-03/samsung-galaxy-x-foldable-phone-concept_148895740800.jpg',
    'https://www.gizbot.com/images/2017-03/samsung-galaxy-x-foldable-phone-concept_148895736970.jpg',
    'https://www.gizbot.com/images/2017-03/samsung-galaxy-x-foldable-phone-concept_148895736960.jpg',
    'https://www.gizbot.com/images/2017-03/samsung-galaxy-x-foldable-phone-concept_148895736950.jpg',
    'https://www.gizbot.com/images/2017-03/samsung-galaxy-x-foldable-phone-concept_148895736940.jpg'
]);
Listing item5 = Listing(5, '720Hz Monitor', user1.username, '1938.435632543',
  images: ['https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/50ccd0114240597.60379bba2c44a.jpg',
    'https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/969abd114240597.60379bba2a453.jpg',
    'https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/c99e87114240597.60379bba2db2d.jpg',
    'https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/acfd56114240597.60379bba2cff5.jpg',
    'https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/2ea081114240597.60379bba2f85d.jpg',
]);
Listing item6 = Listing(6, 'Yeezy Red Octobers', user3.username, '1000.495888773', status: 2, buyer: user2.username,
    images: ['lib/assets/1.jpg',
      'lib/assets/2.jpg',
      'lib/assets/3.jpg',
      'lib/assets/4.jpg',
]);
Listing item7 = Listing(7, 'PIKACHU ILLUSTRATOR PSA 9 MINT', user3.username, '138985.4065323141', status: 5, buyer: user2.username,
    description: 'The Most Valuable Pokemon Card: The Pikachu Illustrator PSA 9 Mint'
        'This card is the Holy Grail of Pokemon; The most valuable Pokemon card in existence!'
        'Rarer than Honus Wagner, Mickey Mantle, Black Lotus, & Charizard'
        'The Pikachu Illustrator was only awarded to the winners of the Original Illustration Contest in Japan, 1998.  Estimated 20-39 copies'
        'This is the Most Documented Copy of the Illustrator!  It was the only known Illustrator for a decade!'
        'This exact Illustrator was the first PSA 9 Mint example'
        'This card was featured in the PSA/SMR 2017 Trophy Card Article (image below)'
        'This card is the Bulbapedia stock image (image below)'
        'There is no card in this hobby that combines Value, Rarity, History than the Pikachu Illustrator.'
        'The pictures are of the exact card',
    images: ['lib/assets/poke1.jpg',
      'lib/assets/poke2.png',
      'lib/assets/poke3.png',
]);


Map<num, String> statusInfo = {0: "Available", 1: "Buyer Sent Payment", 2: "Payment Received",
  3: "Seller Sent Shipment", 4: "Buyer Confirmed", 5: "Payment Sent to Seller"};

// lists of dummy data
List<User> userList = [user1, user2, user3];
List<Listing> feed = [item1, item2, item3, item4, item5, item6, item7];

// this will be in home_page2 as parameter for the appBar, which changes the top right button
// from "log in" to "account icon"
bool loggedIn = false;

// this will be used to store the username of the user that logs in
// so when a listing is being created the seller is always the logged in user
String loggedInUser = '';

// List that will be used for cart, starts off empty
List<Listing> cart = [];

  // displays all items used for home feed
  getFeed(){
    List<Listing> homeFeed = [];
    for(var i in feed){
      if(i.status == 0){
        homeFeed.add(i);
      }
    }
    return homeFeed;
  }

  passwordsMatch(String password) {
    for (var i in userList) {
      if (i.username == loggedInUser) {
        if (i.password == password) {
          return true;
        } else {
          return false;
        }
      }
    }
    return false;
  }

  updatePassword(String password) {
    for (var i in userList) {
      if (i.username == loggedInUser) {
        i.password = password;
      }
    }
    }

  getListings() {
    List<Listing> listingFeed = [];
    for (var i in feed) {
      if (loggedIn == true && (i.seller == loggedInUser) && i.status < 1) {
        listingFeed.add(i);
      }
    }
    return listingFeed;
  }

  getCurrentContracts(){
    List<Listing> contractFeed = [];
    for(var i in feed){
      if(loggedIn == true && (i.seller == loggedInUser || i.buyer == loggedInUser) && i.status > 0 && i.status < 5){
        contractFeed.add(i);
      }
    }
    return contractFeed;
  }

  getContractHistory(){
    List<Listing> historyFeed = [];
    for(var i in feed){
      if(loggedIn == true && (i.seller == loggedInUser || i.buyer == loggedInUser) && i.status == 5){
        historyFeed.add(i);
      }
    }
    return historyFeed;
  }

  // used to add listing to the feed, should create the Listing within the page
  // then pass it here
  createListing(Listing item){
    feed.add(item);
  }
  // used to create listingID that will not be repeated, use this when creating
  // a listing
  generateListingID(){
    return feed.length + 1;
  }



  deleteListing(Listing item) {
    feed.remove(item);
  }

  // function for logging in
  login(username, password){
    for (var i in userList){
      if(username == i.username && password == i.password){
        loggedInUser = i.username;
        loggedIn = true;

        return loggedIn;
      }
    }
    return loggedIn;
  }

  // function to log out
  logout(){
    loggedInUser = '';
    loggedIn = false;
  }

  // used to add user to the userList, should create the User within the page
  // then pass it here
  createUser(User newUser){
    userList.add(newUser);
  }

  // will return the list cart containing all Listings in the cart
  getCartFeed(){

    return cart;
  }



  // adding an item to the cart feed
  addToCart(Listing item){
    cart.add(item);
  }

  checkoutCart() {
    for (var i in cart) {
      i.status = 1;
      i.buyer = loggedInUser;
    }
    cart = [];
  }

  // will remove an item from cart
  removeFromCart(num ID){
    for(var i in cart){
      if(i.listingID == ID){
        cart.remove(i);
      }
    }
  }

