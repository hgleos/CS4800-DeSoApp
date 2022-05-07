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

// lists of dummy data
List<User> userList = [user1, user2, user3];
List<Listing> feed = [item1, item2, item3, item4, item5];

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
    return feed;
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

  // I assume when a user clicks on their own listing there will be a delete button
  // if so then we can delete it by using the listingID number
  deleteListing(num listingID){
    for(var i in feed){
      if(i.listingID == listingID){
        feed.remove(i);
      }
    }
  }

  // function for logging in
  login(username, password){
    for (var i in userList){
      if(username == i.username && password == i.password){
        loggedInUser = i.username;
        loggedIn = true;
      }
    }
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

  // will remove an item from cart
  removeFromCart(num ID){
    for(var i in cart){
      if(i.listingID == ID){
        cart.remove(i);
      }
    }
  }

