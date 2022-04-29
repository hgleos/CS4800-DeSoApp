import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({Key? key}) : super(key: key);

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {

  final listingImages = ['lib/assets/shoeimages/1.jpg', 'lib/assets/shoeimages/2.jpg', 'lib/assets/shoeimages/3.jpg', 'lib/assets/shoeimages/4.jpg'];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: listingImages.length,
        itemBuilder: (context, index, realIndex) {
          final image = listingImages[index];

          return buildImage(image, index);
        },
        options: CarouselOptions(height: 400)
  );

  }

  Widget buildImage(String image, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 12),
    color: Colors.grey,
    child: Image.asset(
        image,
        fit: BoxFit.cover,
    ),
  );


}