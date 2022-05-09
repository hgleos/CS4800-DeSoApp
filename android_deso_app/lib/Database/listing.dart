import 'package:android_deso_app/Database/database.dart';

class Listing {
  num status;
  num listingID;
  List images = [];
  String title;
  String description;
  String seller;
  String buyer = '';
  String price;

  Listing(this.listingID, this.title, this.seller, this.price, {this.images = const ['lib/assets/default image.png'],
    this.status = 0,
    this.description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
      'Nam eleifend sapien nulla, ac ultricies erat eleifend at. '
      'Praesent facilisis semper bibendum. Pellentesque tincidunt tortor velit,'
      ' et ultrices magna hendrerit eu. Vivamus cursus pharetra interdum. '
      'Integer interdum quam id posuere fringilla. Nam augue nunc, elementum '
      'sed bibendum interdum, tincidunt id ante. Proin lorem neque, tempor ut '
      'dictum vitae, ornare in velit. Class aptent taciti sociosqu ad litora '
      'torquent per conubia nostra, per inceptos himenaeos. Fusce in consectetur'
      ' metus. Integer tincidunt nisl quis tellus scelerisque, quis sollicitudin'
      ' turpis posuere. Aenean mollis tellus pellentesque pulvinar cursus. '
      'Aenean ornare, libero id accumsan iaculis, ligula quam lacinia nibh, non'
      ' blandit enim velit quis odio. In at risus urna. Donec sit amet semper'
      ' dui.\nInterdum et malesuada fames ac ante ipsum primis in faucibus.'
      ' Aenean ac leo tincidunt, elementum mi ac, aliquet nisi. Fusce vitae'
      ' tincidunt risus, eget laoreet libero. Vestibulum turpis quam, commodo'
      ' vel pretium congue, ultricies et odio. Maecenas nec risus feugiat,'
      ' porta odio eu, finibus eros. Quisque cursus urna justo, at lobortis'
      ' ligula imperdiet ut. Aenean vel congue turpis, at feugiat ex.', this.buyer = ''});
}